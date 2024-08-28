/** 
 *  @file   ProgramSlice.h
 *  @brief  Daedalus' Program Slicer Header File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include <map>
#include <set>

#include "llvm/Analysis/AliasAnalysis.h"

#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"

namespace llvm {

  class ProgramSlice {
  public:
    /**
     * @brief Constructs a ProgramSlice object.
     */
    ProgramSlice(Instruction &I, Function &F, PostDominatorTree &PDT);

    /**
     * @brief Checks if outlining the slice is feasible.
     */
    bool canOutline();
    bool newcanOutline();

    /**
     * @brief if a phi-function is the criterion and dont post dominates all phi in your slice
     */
    bool _phiCrit;

    /**
     * @brief Retrieves the original function arguments as a SmallVector of Values.
     */
    SmallVector<Value *> getOrigFunctionArgs();

    /**
     * @brief Retrieves the struct type representing thunks (lazified instances) of this program slice's delegate function.
     */
    StructType *getThunkStructType(bool memo = false);

    /**
     * @brief Retrieves the mapping of original instructions to their corresponding instructions in the sliced function.
     */
    std::map<Instruction *, Instruction *> getInstructionInSlice();

    /**
     * @brief Outlines the given slice into a standalone Function.
     */
    Function * outline();

    /// Returns the delegate function resulted from outlining the slice, using
    /// memoization.
    Function *memoizedOutline();

    /**
     * @brief TODO
     */
    static void simplifyCfg(Function *F, FunctionAnalysisManager &AM);

  private:
    void insertLoadForThunkParams(Function *F, bool memo);

    /**
     * @brief Prints the original and sliced functions for debugging purposes.
     */
    void printFunctions(Function *F);
    
    /**
     * @brief Reorders basic blocks in the new function F, ensuring
     * that the sliced function's entry block (the only one with no predecessors)
     * is first in the layout. This is necessary because LLVM assumes the first
     * block of a function is always its entry block.
     */
    void reorderBlocks(Function *F);

    /**
     * @brief Reroutes branches in the slice to properly build control flow in the delegate function.
     */
    void rerouteBranches(Function *F);

    /**
     * @brief Adds a return instruction to function F, returning the computed value
     * of the sliced function.
     */
    ReturnInst *addReturnValue(Function *F);

    /**
     * @brief Fixes the instruction/argument/BB uses in new function F,
     * to use their corresponding versions in the sliced function, rather
     * than the originals from whom they were cloned.
     */
    void reorganizeUses(Function *F);

    /**
     * @brief Adds slice instructions to function F, corresponding to instructions in the original function.
     */
    void populateBBsWithInsts(Function *F);

    /**
     * @brief Adjusts references between the function arguments and the operands
     * of the instructions in function F.
     */
    void replaceArgs(Function *F);

    /**
     * @brief Populates function F with BasicBlocks corresponding to the BBs in the original function being sliced which contained instructions included in the slice.
     */
    void populateFunctionWithBBs(Function *F);

    /**
     * @brief Adds terminating branches to BasicBlocks in function F,
     * for BBs whose branches were not included in the slice but
     * which are necessary to replicate the control flow of the
     * original function.
     */
    void addMissingTerminators(Function *F);


    void addMemoizationCode(Function *F, ReturnInst *new_ret);
    
    /**
     * @brief Inserts a new BasicBlock in Function F corresponding to the originalBB from the original function being sliced.
     */
    void insertNewBB(const BasicBlock *originalBB, Function *F);
    
    /**
     * @brief Prints debugging information about the program slice.
     */
    void printSlice();

    /**
     * @brief Computes the attractor blocks (first dominator) for each basic block in the original function.
     */
    void computeAttractorBlocks();

    /**
     * @brief Adds branches from immediate dominators which existed in the original function to the slice.
     */
    void addDomBranches(DomTreeNode *cur, DomTreeNode *parent,
                        std::set<DomTreeNode *> &visited);
    
    void size();
    StructType *computeStructType(bool memo);

    /// pointer to the Instruction used as slice criterion
    Instruction *_initial;

    Instruction *_instRetValue;

    /// function being sliced
    Function *_parentFunction;

    /// list of formal arguments on which the slice depends on (if any)
    SmallVector<Argument *> _depArgs;
    std::vector<std::pair<Type *, StringRef> > _phiDepArgs;

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

    /// maps original function arguments to new counterparts in the slice function
    std::map<Argument *, Value *> _argMap;

    size_t _size;

    /// maps BasicBlocks in the original function to their new cloned counterparts
    /// in the slice
    std::map<const BasicBlock *, BasicBlock *> _origToNewBBmap;

    /// same as above, but in the opposite direction
    std::map<BasicBlock *, const BasicBlock *> _newToOrigBBmap;

    /// maps Instructions in the original function to their cloned counterparts in
    /// the slice
    std::map<Instruction *, Instruction *> _Imap;

    /// We store the slice's thunk types, because LLVM does not cache types based
    /// on structure
    StructType *_thunkStructType;
    StructType *_memoizedThunkStructType;

  };
} // namespace llvm
