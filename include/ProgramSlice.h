/**
 *  @file   ProgramSlice.h
 *  @brief  Daedalus' Program Slicer Header File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include <map>
#include <set>

#include "llvm/Analysis/AliasAnalysis.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Error.h"

// #include "llvm/Transforms/IPO/FunctionMerging.h"

namespace llvm {

class ProgramSlice {
public:
  /**
   * @brief Constructs a ProgramSlice object.
   */
  ProgramSlice(Instruction &I, Function &F, FunctionAnalysisManager &FAM,
               std::set<BasicBlock *> &tryCatchBlocks);

  /**
   * @brief Checks if outlining the slice is feasible.
   */
  std::pair<bool, std::string> _canOutline = {true, ""};

  /**
   * @brief Retrieves the original function arguments as a SmallVector of
   * Values.
   */
  SmallVector<Value *> getOrigFunctionArgs();

  /**
   * @brief Retrieves the mapping of original instructions to their
   * corresponding instructions in the sliced function.
   */
  std::map<Instruction *, Instruction *> getInstructionInSlice();

  /**
   * @brief Outlines the given slice into a standalone Function.
   */
  Function *outline();

  /**
   * @brief A function to simplify basic blocks of a function using the same
   * method as the SimplifyCFGPass
   */
  static void simplifyCfg(Function *F, FunctionAnalysisManager &AM);

  /*
   * @brief A function to merge two other functions using func-merging pass
   */
  // static FunctionMergeResult mergeFunctions(Function *F1, Function *F2);

  /*
   * @brief Retrieves the current slice's parent function.
   */
  Function *getParentFunction();

private:
  /**
   * @brief Reorders basic blocks in the new function F, ensuring
   * that the sliced function's entry block (the only one with no predecessors)
   * is first in the layout. This is necessary because LLVM assumes the first
   * block of a function is always its entry block.
   */
  void reorderBlocks(Function *F);

  /**
   * @brief Reroutes branches in the slice to properly build control flow in the
   * delegate function.
   */
  void rerouteBranches(Function *F);

  /**
   * @brief Adds a return instruction to function F, returning the computed
   * value of the sliced function.
   */
  ReturnInst *addReturnValue(Function *F);

  /**
   * @brief Fixes the instruction/argument/BB uses in new function F,
   * to use their corresponding versions in the sliced function, rather
   * than the originals from whom they were cloned.
   */
  void reorganizeUses(Function *F);

  /**
   * @brief Adds slice instructions to function F, corresponding to instructions
   * in the original function.
   */
  void populateBBsWithInsts(Function *F);

  /**
   * @brief Adjusts references between the function arguments and the operands
   * of the instructions in function F.
   */
  void replaceArgs(Function *F, DenseMap<Value *, uint> dt);

  /**
   * @brief Populates function F with BasicBlocks corresponding to the BBs in
   * the original function being sliced which contained instructions included in
   * the slice.
   */
  void populateFunctionWithBBs(Function *F);

  /**
   * @brief Inserts a new BasicBlock in Function F corresponding to the
   * originalBB from the original function being sliced.
   */
  void insertNewBB(const BasicBlock *originalBB, Function *F);

  /**
   * @brief Computes the attractor blocks (first dominator) for each basic block
   * in the original function.
   */
  void computeAttractorBlocks();

  /**
   * @brief Adds branches from immediate dominators which existed in the
   * original function to the slice.
   */
  void addDomBranches(DomTreeNode *cur, DomTreeNode *parent,
                      std::set<DomTreeNode *> &visited);

  /// Find next dominated node that exists in the slice, when a new target of a
  /// branch is not found
  BasicBlock *findNextDominatedNode(DominatorTree &DT,
                                    const BasicBlock *startNodeBB);
  /// Helper function to create an unreachable block.
  BasicBlock *createUnreachableBlock(Function *F);
  /// Helper function to handle basic blocks without terminators.
  void handleNoTerminatorBlock(BasicBlock &BB, const BasicBlock *originalBB,
                               Function *F, DominatorTree &DT,
                               BasicBlock *unreachableBlock);
  /// Helper for blocks without terminators: handles original BranchInst.
  void handleNoTerminatorBranch(BasicBlock &BB, const BasicBlock *originalBB,
                                Function *F, DominatorTree &DT);
  /// Helper for blocks without terminators: handles original SwitchInst.
  void handleNoTerminatorSwitch(BasicBlock &BB, const BasicBlock *originalBB,
                                Function *F, DominatorTree &DT);
  /// Helper function to handle basic blocks with existing terminators.
  void handleTerminatorBlock(BasicBlock &BB, const BasicBlock *originalBB,
                             Function *F, DominatorTree &DT,
                             BasicBlock *unreachableBlock);
  /// Helper for blocks with terminators: handles existing BranchInst.
  void handleExistingBranchInst(BranchInst *BI, BasicBlock &currentBB,
                                const BasicBlock *originalBB, Function *F,
                                DominatorTree &DT,
                                BasicBlock *unreachableBlock);
  /// Helper for blocks with terminators: handles existing SwitchInst.
  void handleExistingSwitchInst(SwitchInst *SI, BasicBlock &currentBB,
                                const BasicBlock *originalBB, Function *F,
                                DominatorTree &DT,
                                BasicBlock *unreachableBlock);
  /// Determines the target block for a successor, potentially finding a
  /// dominated node if direct mapping fails.
  BasicBlock *getOrCreateTargetBlock(const BasicBlock *successor,
                                     const BasicBlock *originalBB,
                                     DominatorTree &DT);
  /// Updates PHI nodes in the new successor block.
  void updatePHINodesForSuccessor(BasicBlock *newSuccessor,
                                  const BasicBlock *originalIncomingBlock,
                                  BasicBlock *currentBB, Function *F,
                                  DominatorTree &DT);
  /// Replaces uses of a successor with the unreachable block and updates the
  /// terminator.
  void replaceUsesAndSetSuccessor(BasicBlock *successorToReplace,
                                  BasicBlock *unreachableBlock, Function *F,
                                  Instruction *terminator,
                                  unsigned int successorIndex);
  /// Cleans up the unreachable block if it wasn't used.
  void cleanupUnreachableBlock(BasicBlock *unreachableBlock);
  /// Debugging helper to log predecessors.
  void logPredecessors(Function *F);

  void size();

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

  /// function call being lazified

  // @_Imap ->
  /// maps each BasicBlock to its attractor (its first  dominator), used for
  /// rearranging control flow
  std::map<const BasicBlock *, const BasicBlock *> _attractors;

  /// maps BasicBlocks in the original function to their new cloned counterparts
  /// in the slice
  std::map<const BasicBlock *, BasicBlock *> _origToNewBBmap;

  /// same as above, but in the opposite direction
  std::map<BasicBlock *, const BasicBlock *> _newToOrigBBmap;

  /// maps Instructions in the original function to their cloned counterparts in
  /// the slice
  std::map<Instruction *, Instruction *> _Imap;
};
} // namespace llvm
