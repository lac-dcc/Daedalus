/**
 *  @file   daedalus.cpp
 *  @brief  Daedalus Pass Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "../include/daedalus.h"
#include "../include/ProgramSlice.h"
#include "../include/debugCommon.h"
#include "../include/reports.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/NativeFormatting.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/MergeFunctions.h"
#include <filesystem>
#include <llvm/Pass.h>
// #include "llvm/Transforms/IPO/FunctionMerging.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <csignal>
#include <memory>
#include <set>
#include <system_error>

using namespace llvm;

#define DEBUG_TYPE "daedalus"

STATISTIC(TotalFunctionsOutlined, "Total number of functions outlined");
STATISTIC(TotalSlicesMerged, "Total number of slices that got merged");
STATISTIC(TotalSlicesDiscarded, "Total number of slices that got discarded");
STATISTIC(SizeOfLargestSliceBeforeMerging,
          "Size of the largest slice function before merging step");
STATISTIC(SizeOfLargestSliceAfterMerging,
          "Size of the largest slice function after merging step");
static cl::opt<bool>
    dumpDot("dump-dot",
            cl::desc("Export function slice CFGs as DOT graph files in a "
                     "dedicated directory per source file"),
            cl::init(false));

/**
 * @brief Determines if an instruction type can be used as slice criterion.
 *
 * @details This function checks if the given instruction is one of several
 * types that should not be considered for slicing, such as branch instructions,
 * return instructions, alloca instructions, comparison instructions, load
 * instructions, and store instructions. If the instruction is a PHI
 * node, it must not have users that are also PHI nodes within the same basic
 * block.
 *
 * @param I The instruction to check.
 * @return True if the instruction type can be sliced, false otherwise.
 */
bool canBeSliceCriterion(Instruction &I) {
  if (isa<BranchInst>(I)) return false; // Branch Instruction have badref
  if (isa<ReturnInst>(I)) return false;
  if (isa<AllocaInst>(I)) return false; // No needed
  if (isa<ICmpInst>(I)) return false;
  if (isa<LoadInst>(I)) return false;
  if (isa<StoreInst>(I)) return false;

  // PHINodes MUST be at the top of basic blocks. If our criterion
  // is a PHINode, it will be replaced by a call site. Consequently,
  // all PHINodes below it MUST be moved above our criterion. However,
  // if at least one of these PHINodes is a user of our criterion, it
  // will not dominate all its uses. In this case, we cannot replace it.
  if (PHINode *phi = dyn_cast<PHINode>(&I)) {
    for (User *use : phi->users()) {
      if (Instruction *Iuse = dyn_cast<Instruction>(use))
        if (isa<PHINode>(Iuse) && Iuse->getParent() == I.getParent()) {
          LLVM_DEBUG(dbgs() << COLOR::RED
                            << "Criterion is a phi-node which at least one of "
                               "it's users are a Phi-Node and are in the same "
                               "basic block!\n"
                            << COLOR::CLEAN);
          return false;
        }
    }
  }
  return true;
}

/**
 * @brief Determines if an instruction can be safely removed without affecting a
 * target instruction.
 *
 * @param inst The instruction to evaluate for removal
 * @param targetInst The instruction that should be preserved
 * @param origInst Set of original instructions in the slice
 * @param visited Set to track visited instructions during analysis
 * @param canRemoveCache Map caching removal decisions for instructions
 * @return Whether the instruction can be safely removed
 */
bool canRemoveInstruction(Instruction *inst, Instruction *targetInst,
                          const std::set<Instruction *> &origInst,
                          std::set<Instruction *> &visited,
                          std::map<Instruction *, bool> &canRemoveCache) {
  // Check cache first for already processed instructions
  if (canRemoveCache.find(inst) != canRemoveCache.end()) {
    return canRemoveCache[inst];
  }

  // Base cases for quick decisions
  if (inst == targetInst) return false;
  if (inst->getParent() == nullptr) return true;
  if (isa<GlobalValue>(inst) || inst->isTerminator()) return false;
  if (origInst.find(inst) == origInst.end()) return false;

  // Detect cycles in the dependency graph
  if (visited.find(inst) != visited.end()) {
    // Temporarily mark as removable to break cycles - final decision made later
    canRemoveCache[inst] = true;
    return true;
  }

  visited.insert(inst);

  // An instruction can be removed if all its users can be removed
  for (User *user : inst->users()) {
    if (!user) continue;

    if (Instruction *userInst = dyn_cast<Instruction>(user)) {
      if (!canRemoveInstruction(userInst, targetInst, origInst, visited,
                                canRemoveCache)) {
        canRemoveCache[inst] = false;
        return false;
      }
    }
  }

  canRemoveCache[inst] = true;
  return true;
}

/**
 * @brief Analyzes which instructions can be safely removed without affecting
 * the target instruction.
 *
 * @param origInst The set of original instructions to check
 * @param targetInst The target instruction to preserve
 * @param toRemove Set that will be populated with removable instructions
 * @return True if the analysis was successful
 */
bool analyzeRemovableInstructions(const std::set<Instruction *> &origInst,
                                  Instruction *targetInst,
                                  std::set<Instruction *> &toRemove) {
  std::map<Instruction *, bool> canRemoveCache;

  // Process each instruction in the original set
  for (Instruction *currInst : origInst) {
    // Skip target instruction and instructions without parents
    if (currInst == targetInst || currInst->getParent() == nullptr) {
      continue;
    }

    std::set<Instruction *> visited;

    // If instruction can be removed, add to removal set
    if (canRemoveInstruction(currInst, targetInst, origInst, visited,
                             canRemoveCache)) {
      toRemove.insert(currInst);
    }
  }

  return true;
}

/**
 * @brief Processes a single slice to determine if it can be simplified
 *
 * @param slice The instruction slice to process
 * @param mergeTo Set of functions allowed to be merged
 * @param toSimplify Set of functions to be simplified
 * @param toRemove Set of instructions to be removed
 * @return Pair indicating if slice was (unmergeable, nonSelfContained)
 */
std::pair<bool, bool> processSlice(iSlice &slice,
                                   const std::set<Function *> &mergeTo,
                                   std::set<Function *> &toSimplify,
                                   std::set<Instruction *> &toRemove) {
  Instruction *sliceCriterion = slice.I;
  CallInst *callInst = slice.callInst;
  Function *F = slice.F;
  std::set<Instruction *> origInst = slice.constOriginalInst;

  if (F == nullptr) return {false, false};

  // Get the actual function from the call instruction
  F = callInst->getCalledFunction();

  // Check if function is allowed to be merged
  if (mergeTo.count(F) == 0) {
    killSlice(F, callInst, sliceCriterion);
    return {true, false};
  }

  // Move the entry block to the start of the function
  BasicBlock *realEntry = nullptr;
  for (BasicBlock &BB : *F) {
    if (BB.hasNPredecessors(0)) {
      realEntry = &BB;
      break;
    }
  }

  if (realEntry) {
    realEntry->moveBefore(&F->getEntryBlock());
  }

  if (sliceCriterion->getParent() == nullptr) return {false, false};

  // Analyze which instructions can be removed
  std::set<Instruction *> tempToRemove;
  if (!analyzeRemovableInstructions(origInst, sliceCriterion, tempToRemove)) {
    LLVM_DEBUG(dbgs() << "Not self contained!\n");
    killSlice(F, callInst, sliceCriterion);
    return {false, true};
  }

  // Process removable instructions
  for (auto *inst : tempToRemove) {
    toRemove.insert(inst);

    // Handle call instructions specially
    if (CallInst *cInst = dyn_cast<CallInst>(inst)) {
      Function *G = cInst->getCalledFunction();
      if (G && G->hasFnAttribute(Attribute::NoInline)) {
        G->removeFnAttr(Attribute::NoInline);
      }
    }
  }

  toSimplify.insert(F);
  toRemove.insert(sliceCriterion);

  return {false, false};
}

/**
 * @brief Removes instructions from slices and simplifies functions.
 *
 * @param allSlices Vector of instruction slices to process
 * @param mergeTo Set of functions allowed to be merged
 * @param toSimplify Set of functions that need to be simplified
 * @return Result containing counts of unmergeable and non-self-contained slices
 */
SliceProcessingResult removeInstructions(std::vector<iSlice> &allSlices,
                                         const std::set<Function *> &mergeTo,
                                         std::set<Function *> &toSimplify) {
  std::set<Instruction *> toRemove;
  SliceProcessingResult result = {0, 0};

  // Process each slice
  for (iSlice &slice : allSlices) {
    auto [isUnmergeable, isNonSelfContained] =
        processSlice(slice, mergeTo, toSimplify, toRemove);

    if (isUnmergeable) result.unmergeable++;
    if (isNonSelfContained) result.nonSelfContained++;
  }

  // Remove all collected instructions
  for (auto &inst : toRemove) {
    inst->replaceAllUsesWith(UndefValue::get(inst->getType()));
    inst->eraseFromParent();
  }

  return result;
}

/**
 * @brief Removes a function and its call instructions from the LLVM IR.
 *
 * This function replaces all uses of a specified call instruction with a given
 * criterion instruction, then erases the call instruction from its parent. It
 * also removes the NoInline attribute from the function, if present, and
 * replaces all uses of the function with an undefined value before erasing the
 * function from its parent.
 *
 * @param F The function to be removed.
 * @param callInst The call instruction to be replaced and erased.
 * @param criterion The instruction to replace the call instruction with.
 */
void killSlice(Function *F, CallInst *callInst, Instruction *criterion) {
  callInst->replaceAllUsesWith(criterion);
  callInst->eraseFromParent();

  if (!F->getParent()) return;
  // AttrBuilder builder(F->getContext());
  // builder.removeAttribute(Attribute::NoInline);
  F->removeFnAttr(Attribute::NoInline);
  std::set<User *> fUses;
  for (User *U : F->users()) fUses.insert(U);
  for (User *U : fUses) {
    if (CallInst *X = dyn_cast<CallInst>(U)) {
      X->replaceAllUsesWith(UndefValue::get(X->getType()));
      X->eraseFromParent();
    } else {
      LLVM_DEBUG(dbgs() << "Warning: Use of function is not a CallInst!\n");
    }
  }
  F->eraseFromParent();
}

/**
 * @brief Collects and returns a set of instructions from a given function that
 * meet certain criteria.
 *
 * This function iterates over all basic blocks in the provided function and
 * collects instructions that meet specific criteria into a set. The current
 * criteria include:
 * - Instructions that are instances of BinaryOperator.
 *
 * @param F A pointer to the function from which instructions are to be
 * collected.
 * @return A set of pointers to instructions that meet the specified criteria.
 */
std::set<Instruction *> instSetMeetCriterion(FunctionAnalysisManager &FAM,
                                             Function *F) {
  std::set<Instruction *> S;
  for (auto &BB : *F) {
    Instruction *term = BB.getTerminator();
    assert(term && "Error: A basic block in an original function is missing a "
                   "terminator instruction...");

    // if (Instruction *retValue = dyn_cast<ReturnInst>(term))
    //   for (auto &it : retValue->operands())
    //     if (Instruction *Iit = dyn_cast<Instruction>(it)) S.insert(Iit);

    for (Instruction &I : BB) {
      // if (isa<PHINode>(I)) S.insert(&I);
      // llvm::StringRef instName = I.getName();
      // if (instName.find("lcssa") == instName.npos) {
      //   S.insert(&I);
      // }
      if (isa<BinaryOperator>(I)) S.insert(&I);
    }
  }

  return S;
}

/**
 * @brief Counts the number of instructions in a given function.
 *
 * This function iterates over all basic blocks in the provided function
 * and sums up the number of instructions in each basic block.
 *
 * @param F Pointer to the function whose instructions are to be counted.
 * @return The total number of instructions in the function.
 */
unsigned int numberOfInstructions(Function *F) {
  unsigned int instCount = 0;
  for (BasicBlock &BB : *F) instCount += BB.size();
  return instCount;
}

/**
 * @brief Counts the number of functions that have been merged into a given
 * function.
 *
 * This function iterates through a map of deleted functions to their
 * corresponding new functions and counts how many times the given function
 * appears as a target of merging.
 *
 * @param F The function to check for merged functions.
 * @param delToNewFunc A map where the key is a deleted function and the value
 * is the function it was merged into.
 * @return The number of functions that have been merged into the given
 * function, including the function itself.
 */
unsigned int
numberOfMergedFunctions(Function *F,
                        std::map<Function *, Function *> &delToNewFunc) {
  unsigned int mergedFuncCount = 1;
  for (auto &pair : delToNewFunc)
    if (pair.second == F) mergedFuncCount++;
  return mergedFuncCount;
}

/**
 * @brief Generates DOT files for a set of functions and stores them in a
 * directory.
 *
 * This function creates a directory named after the module identifier with a
 * suffix ".dump_dot". It then iterates over the provided set of functions, and
 * for each function that has a name, it generates a DOT file representing the
 * function's structure.
 *
 * @param M The module containing the functions.
 * @param newFunctions A set of pointers to functions for which DOT files will
 * be generated.
 */
void functionSlicesToDot(Module &M, const std::set<Function *> &newFunctions) {

  // Create directory
  std::filesystem::path dotDir =
      std::filesystem::current_path() / (M.getModuleIdentifier() + ".dump_dot");

  std::error_code errorCode;

  std::filesystem::create_directory(dotDir, errorCode);

  if (errorCode) {
    errs() << "Failed to create directory '"
           << std::filesystem::absolute(dotDir)
           << "' Reason: " << errorCode.message() << "\n";
    return;
  }

  for (const auto newFunc : newFunctions) {
    if (newFunc->hasName()) {
      // Create a DOT file for the function and handle errors gracefully.
      auto dotFilePath = dotDir / (newFunc->getName().str() + ".dot");
      raw_fd_ostream sliceDotFile(dotFilePath.string(), errorCode);

      // If the file cannot be opened, report the error and skip processing.
      if (errorCode) {
        errs() << "Failed to create slice dot file '"
               << std::filesystem::absolute(dotFilePath)
               << "' Reason: " << errorCode.message() << "\n";
        continue;
      }

      errs() << "Writing '" << std::filesystem::absolute(dotFilePath)
             << "'... ";
      DOTFuncInfo fnInfo(newFunc);
      WriteGraph(sliceDotFile, &fnInfo);
      sliceDotFile.close();
      errs() << "Done.\n";
    }
  }
}

namespace Daedalus {

/**
 * @brief Runs the Daedalus LLVM pass on a given module.
 *
 * @details This function performs slicing on the given module, creating and
 * outlining program slices, and removing instructions that meet specific
 * criteria. It attempts to merge slices and remove unused instructions from the
 * original functions.
 *
 * @param M The module to run the pass on.
 * @param MAM The module analysis manager.
 * @return The preserved analyses after running the pass.
 */
PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {

  std::set<Function *> FtoMap;
  std::vector<iSlice> allSlices;

  if (Error Err = M.materializeAll()) {
    handleAllErrors(std::move(Err), [](const ErrorInfoBase &EIB) {
      errs() << "Error materializing module: " << EIB.message() << "\n";
    });
  }

  for (Function &F : M.getFunctionList())
    if (!F.empty()) FtoMap.insert(&F);

  std::unique_ptr<Module> module =
      std::make_unique<Module>("New_" + M.getName().str(), M.getContext());

  LLVM_DEBUG(dbgs() << "== OUTLINING INST PHASE ==\n");
  FunctionAnalysisManager &FAM =
      MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

  for (Function *F : FtoMap) {
    uint ki = 0;
    for (auto &BB : *F) {
      BB.setName("BB_" + std::to_string(ki));
    }
    // Criterion Set
    std::set<Instruction *> S = instSetMeetCriterion(FAM, F);
    // filter binary instructions for building a set of instructions
    // that can be used as slicing criterion. this function enables us
    // to change how we manage the slicing criterion.

    // Replace all uses of I with the correpondent call
    for (Instruction *I : S) {
      if (!canBeSliceCriterion(*I)) continue;

      LLVM_DEBUG(dbgs() << "daedalus.cpp: Function: " << F->getName()
                        << ",\n\tInstruction: " << *I << "\n");

      ProgramSlice ps = ProgramSlice(*I, *F, FAM);
      Function *G = ps.outline();

      if (G == NULL) continue;

      // Get the original instruction to check if it can be removed
      std::map<Instruction *, Instruction *> constOriginalInst =
          ps.getInstructionInSlice();

      std::set<Instruction *> originInstructionSet;
      for (auto &e : constOriginalInst) originInstructionSet.insert(e.first);

      std::set<Instruction *> tempToRemove;
      if (!analyzeRemovableInstructions(originInstructionSet, I,
                                        tempToRemove)) {
        LLVM_DEBUG(dbgs() << "Not self contained!\n");
        G->eraseFromParent();
        continue;
      }

      SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();
      CallInst *callInst =
          CallInst::Create(G, funcArgs, I->getName(), I->getParent());

      Instruction *moveTo = I;
      if (I && isa<PHINode>(I)) moveTo = I->getParent()->getFirstNonPHI();
      callInst->moveBefore(moveTo);
      I->replaceAllUsesWith(callInst);

      iSlice slice = {I, callInst, G, funcArgs, originInstructionSet, false};
      allSlices.push_back(slice);

      LLVM_DEBUG(dbgs() << COLOR::GREEN << "outlined!" << COLOR::CLEAN << '\n');
    }
  }

  std::set<Function *> originalFunctions;
  std::set<Function *> outlinedFunctions;
  for (iSlice &slice : allSlices) {
    Instruction *sliceCriterion = slice.I;
    Function *F = slice.F;
    Function *originalF = sliceCriterion->getParent()->getParent();
    originalFunctions.insert(originalF);
    outlinedFunctions.insert(F);
    LLVM_DEBUG(if (numberOfInstructions(F) > SizeOfLargestSliceBeforeMerging)
                   SizeOfLargestSliceBeforeMerging = numberOfInstructions(F););
  }

  LLVM_DEBUG(dbgs() << "== MERGE SLICES FUNC PHASE ==\n");

  // Say S and T are two slices that will merge, if we replace S by T, Then
  // delToNewFunc is a map from S to T "deleted function to newFunction".
  auto [mergeFunc, delToNewFunc] =
      MergeFunctionsPass::runOnFunctions(outlinedFunctions);

  if (mergeFunc)
    LLVM_DEBUG(dbgs() << "MergeFunc returned true!\n");
  else
    LLVM_DEBUG(dbgs() << "MergeFunc returned false...\n");

  std::set<Function *> mergeTo; // If a function is on this set, there are some
                                // other function that merges with it.
  for (auto [A, B] : delToNewFunc) {
    if (B == nullptr) continue;
    while (delToNewFunc.count(B)) B = delToNewFunc[B];
    assert(!verifyFunction(*B, &errs()));
    LLVM_DEBUG(if (numberOfInstructions(B) > SizeOfLargestSliceAfterMerging)
                   SizeOfLargestSliceAfterMerging = numberOfInstructions(B););
    mergeTo.insert(B);
  }

  // func-merging impl.
  // std::set<Function *> combinedFunctions;
  // std::set<Function *> mergedFunctions;
  // for (auto [I, F, args, origInst, wasRemoved] : allSlices) {
  //     for (auto [I, G, args, origInst, wasRemoved] : allSlices) {
  //         if (F == G)
  //             continue;
  //         if (combinedFunctions.count(F) > 0 || combinedFunctions.count(G)
  //         > 0)
  //             continue;
  //         FunctionMergeResult fmResult =
  //         llvm::ProgramSlice::mergeFunctions(F, G); if
  //         (fmResult.getMergedFunction() != nullptr) {
  //             combinedFunctions.insert(F);
  //             combinedFunctions.insert(G);
  //             mergedFunctions.insert(fmResult.getMergedFunction());
  //         }
  //         LLVM_DEBUG(dbgs() << "-Merged function: "<<
  //         fmResult.getMergedFunction()->getName() << "\n");
  //     }
  // };

  LLVM_DEBUG(dbgs() << "== REMOVING INST PHASE ==\n");

  std::set<Function *> toSimplify;
  auto [dontMerge, notSelfContained] =
      removeInstructions(allSlices, mergeTo, toSimplify);

  LLVM_DEBUG(dbgs() << "== SIMPLIFY PHASE ==\n");

  for (auto F : toSimplify) {
    llvm::ProgramSlice::simplifyCfg(F, FAM);
  }
  for (auto originalF : originalFunctions) {
    llvm::ProgramSlice::simplifyCfg(originalF, FAM);
  }

  LLVM_DEBUG(dbgs() << "== PRINT PHASE ==\n");

  LLVM_DEBUG(
      LLVM_DEBUG(dbgs() << "== REPORT GENERATION PHASE ==\n");
      LLVM_DEBUG(dbgs() << "Exporting slices' metadata to disk...\n");
      std::filesystem::path sourceFileName = M.getModuleIdentifier();
      std::filesystem::path exportedFileName =
          sourceFileName.string() + "_slices_report.log";

      TotalFunctionsOutlined = allSlices.size();
      TotalSlicesMerged = delToNewFunc.size();
      TotalSlicesDiscarded = dontMerge + notSelfContained;

      ReportWriter ReportWriterObj(exportedFileName); ReportWriterObj.writeLine(
          "totalFunctionsOutlined = " + std::to_string(TotalFunctionsOutlined));
      ReportWriterObj.writeLine(
          "totalSlicesMerged = " +
          std::to_string(TotalSlicesMerged)); // Note: all delToNewFunc keys are
                                              // unique slices
      ReportWriterObj.writeLine("totalSlicesDiscarded = " +
                                std::to_string(TotalSlicesDiscarded));
      ReportWriterObj.writeLine(
          "sizeOfLargestSliceBeforeMerging = " +
          std::to_string(SizeOfLargestSliceBeforeMerging));
      ReportWriterObj.writeLine("sizeOfLargestSliceAfterMerging = " +
                                std::to_string(SizeOfLargestSliceAfterMerging));
      ReportWriterObj.writeLine("mergedSlicesMetadata:");

      std::set<Function *> checkedFunctions;
      for (auto [deletedFunc, newFunc] : delToNewFunc) {
        while (delToNewFunc.count(newFunc)) newFunc = delToNewFunc[newFunc];
        if (newFunc->hasName() && checkedFunctions.count(newFunc) == 0) {
          checkedFunctions.insert(newFunc);
          ReportWriterObj.writeLine("\t" + newFunc->getName().str() + ":");
          ReportWriterObj.writeLine(
              "\t\tsize = " + std::to_string(numberOfInstructions(newFunc)));
          ReportWriterObj.writeLine(
              "\t\tnumberOfMergedFunctions = " +
              std::to_string(numberOfMergedFunctions(newFunc, delToNewFunc)));
        }
      }

      LLVM_DEBUG(dbgs() << "Metadata written into '" << exportedFileName
                        << "' file...\n"););

  if (dumpDot) {
    functionSlicesToDot(M, toSimplify);
  }

  // LLVM_DEBUG(dbgs() << "== MODULE VERIFICATION PHASE ==\n");
  // if (verifyModule(M, &errs())) {
  //   errs() << "Module verification failed!\n";
  //   std::error_code EC;
  //   std::string failedModuleFilename =
  //       M.getModuleIdentifier() + "_failed_module.ll";
  //   raw_fd_ostream OS(failedModuleFilename, EC, sys::fs::OF_None);
  //   if (EC) {
  //     errs() << "Error opening file for writing: " << EC.message() << "\n";
  //   } else {
  //     M.print(OS, nullptr);
  //     errs() << "Module written to " << failedModuleFilename << "\n";
  //   }
  //   assert(false && "Module verification failed!");
  // }

  return PreservedAnalyses::none();
}
} // namespace Daedalus
