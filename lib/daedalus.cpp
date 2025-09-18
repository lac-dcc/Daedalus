/**
 *  @file   daedalus.cpp
 *  @brief  Daedalus Pass Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "../include/daedalus.h"
#include "../include/PHIGateAnalyzer.h"
#include "../include/ProgramSlice.h"
#include "../include/debugCommon.h"
#include "../include/reports.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/MergeFunctions.h"
#include <filesystem>
#include <llvm/Pass.h>
// #include "llvm/Transforms/IPO/FunctionMerging.h"

#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Cloning.h"
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
cl::opt<uint> maxFuncParams(
    "max-slice-params",
    cl::desc("Maximum number of parameters an outlined function can have"),
    cl::init(5));
cl::opt<uint> maxFuncSize(
    "max-slice-size",
    cl::desc(
        "Maximum number of LLVM IR instructions an outlined function can have"),
    cl::init(50));
cl::opt<uint> maxFuncUsers(
    "max-slice-users",
    cl::desc("Maximum number of users an outlined function can have"),
    cl::init(100));

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
bool canBeSliceCriterion(const Instruction &I) {
  if (isa<BranchInst>(I)) return false;
  if (isa<ReturnInst>(I)) return false;
  if (isa<AllocaInst>(I)) return false;
  if (isa<ICmpInst>(I)) return false;
  if (isa<LoadInst>(I)) return false;
  if (isa<StoreInst>(I)) return false;
  return true;
}

/**
 * @brief Identifies and lists instructions to be removed from a program slice.
 *
 * This function determines which instructions can be safely removed from a
 * program slice, starting from a given instruction and considering a slice
 * criterion. It ensures that only instructions that are not global values,
 * terminators, or the slice criterion itself are considered removable.
 * Additionally, an instruction is deemed removable only if all its users
 * are either removable or the slice criterion.
 *
 * @param start The starting instruction from which to begin the analysis.
 * @param sliceCriterion The instruction that serves as the slice criterion
 *                       and should not be removed.
 * @param constOriginalInst A set of original instructions that are considered
 *                          valid for removal.
 * @param toRemove A set to store the instructions identified as removable.
 *
 * @return The number of instructions added to the `toRemove` set.
 */
uint listInstructionsToRemove(Instruction *start,
                              const Instruction *sliceCriterion,
                              const std::set<Instruction *> &constOriginalInst,
                              std::set<Instruction *> &toRemove) {
  // First, collect all relevant instructions reachable from 'start'.
  std::vector<Instruction *> reachable;
  std::stack<Instruction *> worklist;
  std::set<Instruction *> visited;
  worklist.push(start);

  while (!worklist.empty()) {
    Instruction *cur = worklist.top();
    worklist.pop();
    if (!cur) {
      LLVM_DEBUG(dbgs() << "\t\tCurrent instruction is null...\n");
      continue;
    }
    if (visited.count(cur)) continue;
    visited.insert(cur);

    LLVM_DEBUG(dbgs() << "\t\tVisiting: " << *cur << "\n");

    // Skip if it's the slice criterion
    if (cur == sliceCriterion) continue;
    // Must be in original set
    if (!constOriginalInst.count(cur)) continue;
    // Cannot remove globals, terminators
    if (isa<GlobalValue>(cur) || cur->isTerminator()) continue;

    reachable.push_back(cur);

    // Enqueue users
    for (const auto U : cur->users()) {
      if (auto *J = dyn_cast<Instruction>(U)) {
        worklist.push(J);
      }
    }
  }

  // Process in reverse order: an instruction is removable if all its users
  // are either removable or the sliceCriterion.
  for (auto it = reachable.rbegin(); it != reachable.rend(); ++it) {
    Instruction *cur = *it;
    bool canRem = true;
    for (const auto U : cur->users()) {
      if (auto *J = dyn_cast<Instruction>(U)) {
        if (J == sliceCriterion) continue;
        if (!toRemove.count(J)) {
          canRem = false;
          break;
        }
      }
    }
    if (canRem) {
      toRemove.insert(cur);
    }
  }

  return toRemove.size();
}

/**
 * @brief Removes instructions from slices and simplifies functions.
 *
 * This function processes a collection of instruction slices, removing
 * instructions that are not self-contained or belong to functions that
 * should not be merged. It also simplifies functions by removing unnecessary
 * instructions and updating function attributes.
 *
 * @param allSlices A vector of instruction slices to process.
 * @param mergeTo A set of functions that are allowed to be merged.
 * @param toSimplify A set of functions that need to be simplified.
 * @return A pair of unsigned integers representing the count of slices that
 *         were not merged and the count of slices that were not self-contained.
 */
uint removeInstructions(const std::vector<SliceStruct> &allSlices,
                        const std::set<Function *> &mergeTo,
                        std::set<Function *> &toSimplify) {
  std::set<Instruction *> toRemove;
  uint dontMerge = 0;

  for (const SliceStruct &slice : allSlices) {
    Instruction *sliceCriterion = slice.I;
    CallInst *callInst = slice.callInst;
    Function *F = slice.F;
    std::set<Instruction *> origInst = slice.originalInstructionsSet;

    if (F == nullptr) continue;

    if (F->hasName())
      LLVM_DEBUG(dbgs() << "Processing slice: " << F->getName() << "\n");
    else
      LLVM_DEBUG(dbgs() << "Processing slice: no name\n");

    F = callInst->getCalledFunction();
    if (mergeTo.count(F) == 0) {

      if (F->hasName())
        LLVM_DEBUG(dbgs() << "Function '" << F->getName()
                          << "' was not merged. Hence, it will be discarded..."
                          << "\n");
      else
        LLVM_DEBUG(dbgs() << "Processing slice: no name\n");

      removeCallInstruction(F, callInst, sliceCriterion);
      ++dontMerge;
      continue;
    }

    BasicBlock *realEntry = nullptr;
    for (BasicBlock &BB : *F) {
      if (BB.hasNPredecessors(0)) {
        realEntry = &BB;
      }
    }
    if (realEntry) realEntry->moveBefore(&F->getEntryBlock());

    if (sliceCriterion->getParent() == nullptr) continue;

    std::set<Instruction *> tempToRemove;
    for (Instruction *J : origInst) {
      if (J->getParent() && sliceCriterion != J) {
        const uint totalToRemove =
            listInstructionsToRemove(J, sliceCriterion, origInst, tempToRemove);
        LLVM_DEBUG(dbgs() << "\t" << totalToRemove
                          << " instruction(s) will be removed...\n");
      }
    }
    for (Instruction *inst : tempToRemove) {
      if (toRemove.insert(inst).second) {
        if (const auto *cInst = dyn_cast<CallInst>(inst)) {
          if (Function *G = cInst->getCalledFunction();
              G && G->hasFnAttribute(Attribute::NoInline)) {
            G->removeFnAttr(Attribute::NoInline);
          }
        }
      }
    }
    toSimplify.insert(F);
    toRemove.insert(sliceCriterion);
  }

  for (auto &e : toRemove) {
    LLVM_DEBUG(dbgs() << "Removing instruction:" << *e << "\n");
    e->replaceAllUsesWith(UndefValue::get(e->getType()));
    e->eraseFromParent();
  }
  return dontMerge;
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
void removeCallInstruction(Function *F, CallInst *callInst,
                           Instruction *criterion) {
  callInst->replaceAllUsesWith(criterion);
  callInst->eraseFromParent();

  if (!F->getParent()) return;
  // AttrBuilder builder(F->getContext());
  // builder.removeAttribute(Attribute::NoInline);
  F->removeFnAttr(Attribute::NoInline);
  for (auto it = F->user_begin(); it != F->user_end();) {
    if (auto *X = dyn_cast<CallInst>(*it)) {
      ++it;
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
SmallVector<Instruction *> instSetMeetCriterion(Function *F) {
  SmallVector<Instruction *> instVec;
  for (auto &BB : *F) {
    const Instruction *term = BB.getTerminator();
    assert(term && "Error: A basic block in an original function is missing a "
                   "terminator instruction...");
    for (Instruction &I : BB) {
      if (isa<BinaryOperator>(I)) {
        instVec.push_back(&I);
      }
    }
  }

  return instVec;
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
numberOfMergedFunctions(const Function *F,
                        std::map<Function *, Function *> &delToNewFunc) {
  unsigned int mergedFuncCount = 1;
  for (auto &[_, snd] : delToNewFunc)
    if (snd == F) mergedFuncCount++;
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
void functionSlicesToDot(const Module &M,
                         const std::set<Function *> &newFunctions) {

  // Create directory
  const std::filesystem::path dotDir =
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

/**
 * @brief Identifies and collects basic blocks in a function that are involved
 * in try-catch logic, including blocks dominated by invoke instructions and
 * blocks post-dominated by exception destinations.
 *
 * This function analyzes the control flow of a given function to detect basic
 * blocks that are part of try-catch constructs. It uses dominator and
 * post-dominator trees to determine the relationships between blocks.
 *
 * @param F The function to analyze for try-catch logic.
 * @return A set of pointers to basic blocks that are part of try-catch logic.
 */
std::set<const BasicBlock *> searchForTryCatchLogic(Function &F) {
  const DominatorTree DT(F);
  const PostDominatorTree PDT(F);
  std::set<const BasicBlock *> tryCatchBlocks;
  for (auto &BB : F) {
    for (auto &I : BB) {
      if (const auto *Invoke = dyn_cast<InvokeInst>(&I)) {
        const BasicBlock *exceptionDest = Invoke->getUnwindDest();
        SmallVector<BasicBlock *, 8> Descendants;
        DT.getDescendants(&BB, Descendants);
        for (BasicBlock *DomBlock : Descendants) {
          if (DT.dominates(&BB, DomBlock)) {
            tryCatchBlocks.insert(DomBlock);
          }
        }
        for (BasicBlock &CatchBB : F) {
          if (PDT.dominates(&CatchBB, exceptionDest)) {
            tryCatchBlocks.insert(&CatchBB);
          }
        }
      }
    }
  }
  return tryCatchBlocks;
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
  std::vector<SliceStruct> allSlices;

  if (Error Err = M.materializeAll()) {
    handleAllErrors(std::move(Err), [](const ErrorInfoBase &EIB) {
      errs() << "Error materializing module: " << EIB.message() << "\n";
    });
  }

  for (Function &F : M.getFunctionList())
    if (!F.empty()) FtoMap.insert(&F);

  auto module =
      std::make_unique<Module>("New_" + M.getName().str(), M.getContext());

  LLVM_DEBUG(dbgs() << "== OUTLINING INST PHASE ==\n");
  FunctionAnalysisManager &FAM =
      MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

  unsigned int outline_counter = 0;
  for (Function *F : FtoMap) {
    uint ki = 0;
    for (auto &BB : *F) {
      BB.setName((BB.hasName()) ? BB.getName() : "BB_" + std::to_string(ki++));
    }

    // Criterion Set
    SmallVector<Instruction *> S = instSetMeetCriterion(F);
    // filter binary instructions for building a set of instructions
    // that can be used as slicing criterion. this function enables us
    // to change how we manage the slicing criterion.

    // Search for try-catch logic inside the current function
    std::set<const BasicBlock *> tryCatchBlocks = searchForTryCatchLogic(*F);

    // Construct gating functions for all PHI nodes in the function
    DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(*F);
    PHIGateAnalyzer GSAAnalyzer(*F, DT);
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
        predicates = GSAAnalyzer.getGatesForAllPhis();
    LLVM_DEBUG(dbgs() << "daedalus.cpp: Function: " << F->getName() << ",\n");

    // Replace all uses of I with the correpondent call to the new outlined
    // function
    for (Instruction *I : S) {
      if (!canBeSliceCriterion(*I)) continue;

      LLVM_DEBUG(dbgs() << "\tInstruction (Basic Block: "
                        << I->getParent()->getName() << "):\n\t\t" << *I
                        << "\n");

      if (maxFuncSize.getNumOccurrences() > 0 &&
          I->getNumUses() > maxFuncUsers) {
        LLVM_DEBUG(dbgs() << COLOR::RED
                          << "Slice has too many users: " << I->getNumUses()
                          << ", max number of users: " << maxFuncUsers << "\n"
                          << COLOR::CLEAN);
        continue;
      }

      ProgramSlice ps = ProgramSlice(*I, *F, FAM, predicates);

      TargetLibraryInfo &TLI = FAM.getResult<TargetLibraryAnalysis>(*F);
      AAResults *AA = &FAM.getResult<AAManager>(*F);
      uint canOutlineResult = ps.canOutline(AA, TLI, tryCatchBlocks);
      if (!canOutlineResult) {
        LLVM_DEBUG(
            dbgs()
            << "Daedalus could not outline a slice function for the criterion: "
            << *I << "\n");
        continue;
      }

      LLVM_DEBUG({
        // Print the entire module containing the parent function to a file, to
        // extract the faulty function separately later
        Module *parentModule = ps.getParentFunction()->getParent();
        if (parentModule) {
          std::string baseName =
              std::filesystem::path(parentModule->getModuleIdentifier())
                  .stem()
                  .string();
          std::string fileName = baseName + ".parent_module.ll";
          std::error_code ec;
          raw_fd_ostream outFile(fileName, ec, sys::fs::OF_Text);
          if (!ec) {
            parentModule->print(outFile, nullptr);
            outFile.close();
            dbgs() << "\nParent function module written to file: " << fileName
                   << "\n";
          } else {
            dbgs() << "\nFailed to write parent module to file: "
                   << ec.message() << "\n";
          }
        }
      });

      Function *G = ps.outline(&outline_counter);
      if (G == nullptr) continue;
      outline_counter++;

      // Get the original instruction to check if it can be removed
      std::map<Instruction *, Instruction *> constOriginalInst =
          ps.getInstructionInSlice();

      std::set<Instruction *> originInstructionSet;
      for (auto &[fst, _] : constOriginalInst) originInstructionSet.insert(fst);

      SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();
      CallInst *callInst =
          CallInst::Create(G, funcArgs, I->getName(), I->getParent());
      Instruction *moveTo = I;
      if (isa<PHINode>(I)) moveTo = I->getParent()->getFirstNonPHI();
      callInst->moveBefore(moveTo);
      I->replaceAllUsesWith(callInst);

      SliceStruct slice = {I,    callInst, G, funcArgs, originInstructionSet,
                           false};
      allSlices.push_back(slice);

      LLVM_DEBUG(dbgs() << COLOR::GREEN << "outlined!" << COLOR::CLEAN << '\n');
    }
  }

  std::set<Function *> originalFunctions;
  std::set<Function *> outlinedFunctions;
  for (SliceStruct &slice : allSlices) {
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
  uint dontMerge = removeInstructions(allSlices, mergeTo, toSimplify);

  LLVM_DEBUG(dbgs() << "== SIMPLIFY PHASE ==\n");

  for (auto F : toSimplify) {
    llvm::ProgramSlice::simplifyCfg(F, FAM);
  }
  for (auto originalF : originalFunctions) {
    llvm::ProgramSlice::simplifyCfg(originalF, FAM);
  }

  LLVM_DEBUG({
    dbgs() << "== PRINT PHASE ==\n";
    if (!delToNewFunc.empty()) {
      M.print(llvm::outs(), nullptr);
    } else {
      dbgs() << "No functions were merged!\n";
    }
  });

  LLVM_DEBUG(
      LLVM_DEBUG(dbgs() << "== REPORT GENERATION PHASE ==\n");
      LLVM_DEBUG(dbgs() << "Exporting slices' metadata to disk...\n");
      std::filesystem::path sourceFileName =
          std::filesystem::path(M.getModuleIdentifier()).stem().string();
      std::filesystem::path exportedFileName =
          sourceFileName.string() + "_slices_report.log";

      TotalFunctionsOutlined = allSlices.size();
      TotalSlicesMerged = delToNewFunc.size(); TotalSlicesDiscarded = dontMerge;

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

  if (verifyModule(M, &errs())) {
    errs() << "Module verification failed! Printing module:\n";
    M.print(errs(), nullptr);
    assert(false && "Module verification failed!");
  }

  return PreservedAnalyses::none();
}
} // namespace Daedalus
