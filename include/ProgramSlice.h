/**
 *  @file   ProgramSlice.h
 *  @brief  Daedalus' Program Slicer Header File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#ifndef PROGRAM_SLICE_H
#define PROGRAM_SLICE_H

#include <map>
#include <set>

#include "PHIGateAnalyzer.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Error.h"

namespace llvm {

class ProgramSlice {
public:
  ProgramSlice() = default;
  /// Constructs a ProgramSlice object.
  ProgramSlice(Instruction &I, Function &F, FunctionAnalysisManager &FAM,
               std::unordered_map<const BasicBlock *,
                                  SmallVector<const Value *>> &predicates);

  /// Checks if current slice can be outlined into a standalone function.
  uint canOutline(AAResults *AA, TargetLibraryInfo &TLI,
                  const std::set<const BasicBlock *> &tryCatchBlocks) const;

  /// Checks if outlining the slice is feasible.
  std::pair<bool, std::string> _canOutline = {true, ""};

  /// Retrieves the original function arguments as a SmallVector of Values.
  SmallVector<Value *> getOrigFunctionArgs();

  /// Retrieves the mapping of original instructions to their
  /// corresponding instructions in the sliced function.
  std::map<Instruction *, Instruction *> getInstructionInSlice();

  /// Outlines the given slice into a standalone Function.
  Function *outline(unsigned int *counter);

  /// A function to simplify basic blocks of a function using the same
  /// method as the SimplifyCFGPass
  static void simplifyCfg(Function *F, FunctionAnalysisManager &AM);

  /// Retrieves the current slice's parent function.
  Function *getParentFunction() const;

private:
  /// Inserts a new entry block in function F if its current entry block has
  /// predecessors.
  void createNewEntryBlock(Function *F);

  /// Reorders basic blocks in the new function F, ensuring
  /// that the sliced function's entry block (the only one with no predecessors)
  /// is first in the layout. This is necessary because LLVM assumes the first
  /// block of a function is always its entry block.
  static void reorderBlocks(Function *F);

  /// Adds a return instruction to function F, returning the computed
  /// value of the sliced function.
  ReturnInst *addReturnValue(Function *F);

  /// Fixes the instruction/argument/BB uses in new function F,
  /// to use their corresponding versions in the sliced function, rather
  /// than the originals from whom they were cloned.
  void reorganizeUses(Function *F);

  /// Adds slice instructions to function F, corresponding to instructions in
  /// the original function.
  void populateBBsWithInsts(Function *F);

  /// Adjusts references between the function arguments and the operands of the
  /// instructions in function F.
  static void replaceArgs(Function *F, DenseMap<Value *, uint> dt);

  /// Populates function F with BasicBlocks corresponding to the BBs in
  /// the original function being sliced which contained instructions included
  /// in the slice.
  void populateFunctionWithBBs(Function *F);

  /// Inserts a new BasicBlock in Function F corresponding to the originalBB
  /// from the original function being sliced.
  void insertNewBB(const BasicBlock *originalBB, Function *F);

  /// Finds the first dominator in the slice for each basic block in the parent
  /// function.
  std::map<const BasicBlock *, SmallVector<const BasicBlock *>>
  computeFirstDominatorsInSlice() const;

  /// Returns a new target basic block determined by the first dominator of the
  /// given successor block.
  BasicBlock *getNewTargetByFirstDominator(const BasicBlock *successor,
                                           const BasicBlock *originalBB,
                                           const DominatorTree &DT,
                                           const PostDominatorTree &PDT);

  // Checks if the first dominator of curBB in the slice is originalBB
  bool isFirstDominatorInSlice(const BasicBlock *curBB,
                               const BasicBlock *originalBB,
                               const DominatorTree &DT) const;

  /// Helper function to create an unreachable block.
  static BasicBlock *createUnreachableBlock(Function *F);

  /// Reroutes branches in the slice to properly build control flow in the
  /// delegate function.
  void rerouteBranches(Function *F, const PostDominatorTree &PDT);

  void reconstructTerminator(BasicBlock &BB, const BasicBlock *origBB,
                             Function *F, const DominatorTree &DT,
                             BasicBlock *unreachableBlock,
                             const PostDominatorTree &PDT);

  void rerouteTerminatorSuccessors(Instruction *terminator, BasicBlock &BB,
                                   const BasicBlock *origBB, Function *F,
                                   const DominatorTree &DT,
                                   BasicBlock *unreachableBlock,
                                   const PostDominatorTree &PDT);

  Value *getClonedCond(Value *origCond);

  /// Determines the target block for a successor, potentially finding a
  /// dominated node if direct mapping fails.
  BasicBlock *getOrCreateTargetBlock(const BasicBlock *successor,
                                     const BasicBlock *originalBB,
                                     const DominatorTree &DT,
                                     const PostDominatorTree &PDT);

  /// Updates PHI nodes in the new successor block.
  static void
  updatePHINodesForSuccessor(BasicBlock *newSuccessor,
                             const BasicBlock *originalIncomingBlock,
                             BasicBlock *currentBB);

  /// Cleans up the unreachable block if it wasn't used.
  static void cleanupUnreachableBlock(BasicBlock *unreachableBlock);

  /// Debugging helper to log predecessors.
  static void logPredecessors(Function *F);

  /// pointer to the Instruction used as slice criterion
  Instruction *_initial;

  /// Pointer to the instruction that produces the return value of the program
  /// slice. This may be nullptr if the slice does not yield a return value.
  Instruction *_instRetValue;

  /// function being sliced
  Function *_parentFunction;

  /// list of formal arguments on which the slice depends on (if any)
  SmallVector<Value *> _depArgs;

  /// set of instructions that must be in the slice, accordingto dependence
  /// analysis
  std::set<const Instruction *> _instsInSlice;

  /// set of BasicBLocks that must be in the slice, according to dependence
  /// analysis
  std::set<const BasicBlock *> _BBsInSlice;

  /// maps each BasicBlock to its attractor (its first  dominator), used for
  /// rearranging control flow
  std::map<const BasicBlock *, SmallVector<const BasicBlock *>>
      _firstDominators;

  /// maps BasicBlocks in the original function to their new cloned counterparts
  /// in the slice
  std::map<const BasicBlock *, BasicBlock *> _origToNewBBmap;
  std::map<BasicBlock *, const BasicBlock *> _newToOrigBBmap;

  /// maps Instructions in the original function to their cloned counterparts in
  /// the slice
  std::map<Instruction *, Instruction *> _origToNewInst;
  std::map<Instruction *, Instruction *> _newToOrigInst;

  LoopInfo *_loopInfo;
  Loop *_loop;
  BasicBlock *_loopHeader;
};
} // namespace llvm

#endif
