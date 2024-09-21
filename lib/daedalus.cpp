/**
 *  @file   daedalus.cpp
 *  @brief  Daedalus Pass Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "../include/daedalus.h"
#include "../include/MergeFunc/MergeFunc.h"
#include "../include/debugCommon.h"
#include "../include/wyvern/ProgramSlice.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/NativeFormatting.h"
// #include "llvm/Transforms/IPO/FunctionMerging.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <exception>
#include <memory>

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
  /// PHINode MUST to be at top of basic blocks. If our criterion
  /// is a phi-node it will be replace by an callsite, then all the phi-nodes
  /// under it, MUST to be moved above our criterion. But if at least one
  /// of these phi-nodes is an user of our criterion, then it will not
  /// dominate all the uses. In this case, we cant replace it.
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
      LLVM_DEBUG(dbgs() << "Error: Found function with no terminators:\n");
      LLVM_DEBUG(dbgs() << *F << '\n');
      continue;
    };
    if (Instruction *retValue = dyn_cast<ReturnInst>(term))
      for (auto &it : retValue->operands())
        if (Instruction *Iit = dyn_cast<Instruction>(it)) S.insert(Iit);

    // for (Instruction &I : BB) {
    //     if (isa<BinaryOperator>(I)) S.insert(&I);
    // }

    // for (Instruction &I : BB) {
    //     if (isa<StoreInst>(I)) {
    //         for (auto &p : I.operands())
    //             if (auto *Iit = dyn_cast<Instruction>(p)) S.insert(Iit);
    //     }
    // }
  }

  return S;
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
  for (Function *F : FtoMap) {
    PostDominatorTree PDT;
    PDT.recalculate(*F);

    // Criterion Set
    std::set<Instruction *> S = instSetMeetCriterion(F);

    /// To replace all uses of I with the correpondent call
    for (Instruction *I : S) {
      if (!canSliceInstrType(*I)) continue;
      if (!canProgramSlice(I)) continue;
      LLVM_DEBUG(dbgs() << "Instruction:\t" << *I << '\n');
      dbgs() << (isa<ReturnInst>(I) ? "YEP" : "NO") << '\n';

      LLVM_DEBUG(dbgs() << COLOR::RED);
      ProgramSlice ps = ProgramSlice(*I, *F, PDT);
      LLVM_DEBUG(dbgs() << COLOR::CLEAN);

      Function *G = ps.outline();
      if (G == NULL) continue;
      SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();

      // Get the original instruction, to check
      // if it can be removed
      std::map<Instruction *, Instruction *> constOriginalInst =
          ps.getInstructionInSlice();

      std::set<Instruction *> originInstructionSet;
      for (auto &e : constOriginalInst) originInstructionSet.insert(e.first);

      iSlice slice = {I, G, funcArgs, originInstructionSet, false};
      allSlices.push_back(slice);

      LLVM_DEBUG(dbgs() << COLOR::GREEN << "outlined!" << COLOR::CLEAN << '\n');
    }
  }

  std::set<Function *> originalFunctions;
  std::set<Function *> outlinedFunctions;
  for (auto [I, F, args, origInst, wasRemoved] : allSlices) {
    Function *originalF = I->getParent()->getParent();
    originalFunctions.insert(originalF);
    outlinedFunctions.insert(F);
  }

  LLVM_DEBUG(dbgs() << "== MERGE SLICES FUNC PHASE ==\n");
  // Try to merge, if cant merge, delete the functions.
  // let on allSlices, only the slice that is worth to merge.
  //

  // mergefunc impl.
  MergeFunc mf;
  auto [mergeFunc, delToNewFunc] = mf.runOnSet(outlinedFunctions);
  if (mergeFunc)
    LLVM_DEBUG(dbgs() << "MergeFunc returned true!\n");
  else
    LLVM_DEBUG(dbgs() << "MergeFunc returned false...\n");

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
  // If it is worth to merge, then substitute the original instruction
  // with the corresponding function call, and removed unsed instructions
  // from original function.
  //
  auto &FAM = MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

  std::set<Function *> mergeTo;
  for (auto [A, B] : delToNewFunc) {
    if (B == nullptr) continue;
    mergeTo.insert(B);
  }

  std::set<Instruction *> toRemove;
  std::map<Instruction *, Function *> newCalls;
  std::set<Function *> toSimplify;
  for (auto IS : allSlices) {
    auto [I, F, args, origInst, wasRemoved] = IS;
    if (delToNewFunc.find(F) != delToNewFunc.end()) {
      F = delToNewFunc[F];
    }
    if (mergeTo.count(F) == 0) {
      F->eraseFromParent();
      continue;
    }
    toSimplify.insert(F);

    if (I->getParent() == nullptr) continue; // I could may be removed
    // by a previous slice;

    CallInst *callInst =
        CallInst::Create(F, args, I->getName(), I->getParent());
    //
    Instruction *moveTo = I;
    if (I && isa<PHINode>(I)) moveTo = I->getParent()->getFirstNonPHI();
    callInst->moveBefore(moveTo);
    //
    newCalls[callInst] = F;
    std::set<Instruction *>
        constOriginalInst; // set of instruction in original function

    for (Instruction *J : origInst) {
      if (J->getParent() == nullptr) continue;
      std::set<Instruction *> vis;
      if (I != J && canRemove(J, I, origInst, vis, toRemove)) {
        toRemove.insert(J);
      }
    }
    I->replaceAllUsesWith(callInst);
    toRemove.insert(I);
  }
  for (auto &e : toRemove) {
    e->replaceAllUsesWith(UndefValue::get(e->getType()));
    e->eraseFromParent();
  }

  for (auto F : toSimplify) {
    llvm::ProgramSlice::simplifyCfg(F, FAM);
  }
  // TODO: Check if still works, when merge a non-slice function that was not
  // selected on merge.
  for (auto originalF : originalFunctions) {
    llvm::ProgramSlice::simplifyCfg(originalF, FAM);
  }
  for (auto &[callInst, F] : newCalls) {
    if (callInst->users().empty()) {
      callInst->eraseFromParent();
      if (F->users().empty()) F->eraseFromParent();
    }
  }
  for (Function &F : M.getFunctionList()) {
    LLVM_DEBUG(dbgs() << F << '\n');
  }
  return PreservedAnalyses::none();
}
} // namespace Daedalus
