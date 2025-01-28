/**
 *  @file   daedalus.cpp
 *  @brief  Daedalus Pass Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "../include/daedalus.h"
#include "../include/reports.h"
#include "../include/debugCommon.h"
#include "../include/wyvern/ProgramSlice.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/NativeFormatting.h"
#include "llvm/Transforms/IPO/MergeFunctions.h"
// #include "llvm/Transforms/IPO/FunctionMerging.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <csignal>
#include <memory>
#include <set>

using namespace llvm;
#include <llvm/Pass.h>

#define DEBUG_TYPE "Daedalus"

/**
 * @brief Determines if an instruction type can be sliced.
 *
 * @details This function checks if the given instruction is one of several
 * types that should not be considered for slicing, such as branch instructions,
 * return instructions, alloca instructions, comparison instructions, load
 * instructions, and store instructions.
 *
 * @param I The instruction to check.
 * @return True if the instruction type can be sliced, false otherwise.
 */
bool canSliceInstrType(Instruction &I) {
  if (isa<BranchInst>(I)) return false; // Branch Instruction have badref
  if (isa<ReturnInst>(I)) return false;
  if (isa<AllocaInst>(I)) return false; // No needed
  if (isa<ICmpInst>(I)) return false;
  if (isa<LoadInst>(I)) return false;
  if (isa<StoreInst>(I)) return false;
  return true;
}

/**
 * @brief Attempts to remove an instruction if it meets specific criteria.
 *
 * @details This function attempts to remove an instruction from the given set
 * of instructions if it can be safely removed. It recursively checks if all
 * users of the instruction can be removed.
 *
 * @param I The instruction to attempt to remove.
 * @param s The set of instructions to be considered.
 * @param instMap A map tracking the state of each instruction.
 * @param ini The initial instruction for context.
 * @return True if the instruction was successfully removed, false otherwise.
 */
bool canRemove(Instruction *I, Instruction *ini,
               std::set<Instruction *> &constOriginalInst,
               std::set<Instruction *> &vis,
               std::set<Instruction *> &toRemove) {
  if (ini == I) return true;
  if (toRemove.find(I) != toRemove.end()) return true;

  if (constOriginalInst.find(I) == constOriginalInst.end()) return false;

  if (vis.find(I) != vis.end()) return true;

  if (isa<GlobalValue>(I)) {
    return false;
  };

  if (I->isTerminator()) return false;

  vis.insert(I);

  for (auto U : I->users()) {
    if (!U) continue;
    if (Instruction *J = dyn_cast<Instruction>(U))
      if (!canRemove(J, ini, constOriginalInst, vis, toRemove)) return false;
  }
  toRemove.insert(I);
  return true;
}

bool isSelfContained(std::set<Instruction *> origInst, Instruction *I,
                     std::set<Instruction *> &tempToRemove) {
  for (Instruction *J : origInst) {
    if (J->getParent() == nullptr) continue;
    std::set<Instruction *> vis;
    if (I != J) {
      if (canRemove(J, I, origInst, vis, tempToRemove)) tempToRemove.insert(J);
    }
  }
  return true;
}

/**
 * @brief Checks if a program slice can be created for an instruction.
 *
 * @details This function determines if a given instruction can be part of a
 * program slice. Specifically, it ensures that if the instruction is a PHI
 * node, it must not have users that are also PHI nodes within the same basic
 * block.
 *
 * @param I The instruction to check.
 * @return True if the instruction can be part of a program slice, false
 * otherwise.
 */
bool canProgramSlice(Instruction *I) {
  // PHINodes MUST be at the top of basic blocks. If our criterion
  // is a PHINode, it will be replaced by a call site. Consequently, 
  // all PHINodes below it MUST be moved above our criterion. However, 
  // if at least one of these PHINodes is a user of our criterion, it 
  // will not dominate all its uses. In this case, we cannot replace it.
  if (PHINode *phi = dyn_cast<PHINode>(I)) {
    for (User *use : phi->users()) {
      if (Instruction *Iuse = dyn_cast<Instruction>(use))
        if (isa<PHINode>(Iuse) && Iuse->getParent() == I->getParent()) {
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

/// Replace all calls of callInst with original instructions
/// and remove new slice function
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

std::pair<uint, uint> removeInstructions(std::vector<iSlice> &allSlices,
                                         const std::set<Function *> &mergeTo,
                                         std::set<Function *> &toSimplify) {
  std::set<Instruction *> toRemove;
  std::map<Instruction *, Function *> newCalls;

  uint dontMerge = 0, notSelfContained = 0;

  for (auto [I, callInst, F, args, origInst, wasRemoved] : allSlices) {
    if (F == NULL) continue;
    F = callInst->getCalledFunction();
    if (mergeTo.count(F) == 0) {
      killSlice(F, callInst, I);
      ++dontMerge;
      continue;
    }

    BasicBlock *realEntry = nullptr;
    for (BasicBlock &BB : *F) {
      if (BB.hasNPredecessors(0)) {
        realEntry = &BB;
      }
    }
    realEntry->moveBefore(&F->getEntryBlock());

    if (I->getParent() == nullptr) continue;

    std::set<Instruction *> tempToRemove;
    if (!isSelfContained(origInst, I, tempToRemove)) {
      LLVM_DEBUG(dbgs() << "Not self contained!\n");
      killSlice(F, callInst, I);
      ++notSelfContained;
      continue;
    } else {
      for (auto *inst : tempToRemove) {
        toRemove.insert(inst);
        if (CallInst *cInst = dyn_cast<CallInst>(inst)) {
          Function *G = cInst->getCalledFunction();
          if (G->hasFnAttribute(Attribute::NoInline))
            G->removeFnAttr(Attribute::NoInline);
        }
      }
    }
    toSimplify.insert(F);
    toRemove.insert(I);
  }

  for (auto &e : toRemove) {
    e->replaceAllUsesWith(UndefValue::get(e->getType()));
    e->eraseFromParent();
  }
  return {dontMerge, notSelfContained};
}

/**
 * @brief Checks if a given instruction meets the slicing criteria.
 *
 * @details For each BasicBlock in the given Function, it checks the terminator
 * instruction. If the terminator is a ReturnInst and has operands, it adds
 * these operands to the set if they are Instructions. Then, for each
 * Instruction within each BasicBlock, if the instruction is a StoreInst, it
 * collects its operands into the set if they are Instructions.
 *
 * @param F Pointer to a LLVM function
 * @return A std::set containing Instruction* which meet specific criteria:
 * 1. The instruction is an operand of a ReturnInst.
 * 2. The instruction is an operand of a StoreInst.
 */
std::set<Instruction *> instSetMeetCriterion(Function *F) {
  std::set<Instruction *> S;
  for (auto &BB : *F) {
    Instruction *term = BB.getTerminator();
    if (!term) {
      LLVM_DEBUG(errs() << "Error: Found function with no terminators:\n");
      LLVM_DEBUG(errs() << *F << '\n');
      continue;
    };
    // if (Instruction *retValue = dyn_cast<ReturnInst>(term))
    //   for (auto &it : retValue->operands())
    //     if (Instruction *Iit = dyn_cast<Instruction>(it)) S.insert(Iit);

    for (Instruction &I : BB) {
      // if (isa<PHINode>(I)) S.insert(&I);
      llvm::StringRef instName = I.getName();
      // if (instName.find("lcssa") == instName.npos) {
      //   S.insert(&I);
      // }
      if (isa<BinaryOperator>(I)) S.insert(&I);
    }
  }

  return S;
}

unsigned int numberOfInstructions(Function *F) {
  unsigned int instCount = 0;
  for (BasicBlock &BB : *F)
    instCount += BB.size();
  return instCount;
}

unsigned int numberOfMergedFunctions(Function *F, std::map<Function *, Function *> &delToNewFunc) {
  unsigned int mergedFuncCount = 1;
  for (auto &pair : delToNewFunc)
    if (pair.second == F)
      mergedFuncCount++;
  return mergedFuncCount;
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
    PostDominatorTree PDT;
    PDT.recalculate(*F);

    // Criterion Set
    std::set<Instruction *> S = instSetMeetCriterion(F); // filter binary instructions for building a set of instructions that can be used as slicing criterion. this function enables us to change how we manage the slicing criterion. 

    // Replace all uses of I with the correpondent call
    for (Instruction *I : S) {
      if (!canSliceInstrType(*I)) continue;
      if (!canProgramSlice(I)) continue;
      ProgramSlice ps = ProgramSlice(*I, *F, PDT, FAM);
      Function *G = ps.outline();

      if (G == NULL) continue;

      // Get the original instruction to check if it can be removed
      std::map<Instruction *, Instruction *> constOriginalInst =
          ps.getInstructionInSlice();

      std::set<Instruction *> originInstructionSet;
      for (auto &e : constOriginalInst) originInstructionSet.insert(e.first);

      std::set<Instruction *> tempToRemove;
      if (!isSelfContained(originInstructionSet, I, tempToRemove)) {
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
  std::map<long unsigned int, StringRef> guidToName;
  int sizeOfLargestSliceBeforeMerging = 0;
  for (auto [I, call, F, args, origInst, wasRemoved] : allSlices) {
    Function *originalF = I->getParent()->getParent();
    originalFunctions.insert(originalF);
    outlinedFunctions.insert(F);
    guidToName[F->getGUID()] = F->getName();
    if (numberOfInstructions(F) > sizeOfLargestSliceBeforeMerging){
      sizeOfLargestSliceBeforeMerging = numberOfInstructions(F);
      LLVM_DEBUG(dbgs() << "name of the largest slice BEFORE merge: " << F->getName() << ", size = " << sizeOfLargestSliceBeforeMerging << '\n');
    }
  }

  LLVM_DEBUG(dbgs() << "== MERGE SLICES FUNC PHASE ==\n");

  // Say S and T are two slices that will merge, if we replace S by T, Then
  // delToNewFunc is a map from S to T "deleted function to newFunction".
  auto [mergeFunc, delToNewFunc] = MergeFunctionsPass::runOnFunctions(outlinedFunctions);
  int sizeOfLargestSliceAfterMerging = 0;

  if (mergeFunc)
    LLVM_DEBUG(dbgs() << "MergeFunc returned true!\n");
  else
    LLVM_DEBUG(dbgs() << "MergeFunc returned false...\n");

  std::set<Function *> mergeTo; // Set of instruction such that some other slice merges to
  for (auto [A, B] : delToNewFunc) {
    if (B == nullptr) continue;
    if (numberOfInstructions(B) > sizeOfLargestSliceAfterMerging) {
      sizeOfLargestSliceAfterMerging = numberOfInstructions(B);
      LLVM_DEBUG(dbgs() << "name of the largest slice AFTER merge: " << B->getName() << ", size = " << sizeOfLargestSliceAfterMerging << '\n');
    }
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
  for (Function &F : M.getFunctionList()) LLVM_DEBUG(dbgs() << F << '\n');

  // TODO: implement cli option to switch report generation on/off
  LLVM_DEBUG(dbgs() << "== REPORT GENERATION ==\n");
  LLVM_DEBUG(dbgs() << "Exporting slices' data to disk...\n");
  std::filesystem::path sourceFileName = M.getModuleIdentifier();
  std::filesystem::path exportedFileName = sourceFileName.stem().string() + "_slices_report.log";
  ReportWriter reportWriter(exportedFileName);
  reportWriter.writeLine("totalSlicesFound = " + std::to_string(allSlices.size()));
  reportWriter.writeLine("totalSlicesMerged = " + std::to_string(delToNewFunc.size())); // Note: all delToNewFunc keys are unique slices
  reportWriter.writeLine("totalSlicesDiscarded = " + std::to_string(dontMerge + notSelfContained));
  reportWriter.writeLine("sizeOfLargestSliceBeforeMerging = " + std::to_string(sizeOfLargestSliceBeforeMerging));
  reportWriter.writeLine("sizeOfLargestSliceAfterMerging = " + std::to_string(sizeOfLargestSliceAfterMerging));
  reportWriter.writeLine("mergedSlicesMetadata:");
  std::set<Function *> checkedFunctions;
  for (auto [deletedFunc, newFunc] : delToNewFunc) {
    if (newFunc->hasName() && checkedFunctions.count(newFunc) == 0) {
      checkedFunctions.insert(newFunc);
      reportWriter.writeLine("\t" + newFunc->getName().str() + ":");
      reportWriter.writeLine("\t\tsize = " + std::to_string(numberOfInstructions(newFunc)));
      reportWriter.writeLine("\t\tnumberOfMergedFunctions = " + std::to_string(numberOfMergedFunctions(newFunc, delToNewFunc)));
    }
  }

  LLVM_DEBUG(dbgs() << "Data written into '" << exportedFileName << "' file...\n");

  return PreservedAnalyses::none();
}
} // namespace Daedalus
