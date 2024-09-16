/**
 *  @file   MergeFunc.h
 *  @brief  This is a copy o LLVM's mergefunc implementation, that works on set of functions
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#ifndef LLVM_TRANSFORMS_IPO_MERGEFUNC_H
#define LLVM_TRANSFORMS_IPO_MERGEFUNC_H

#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/ValueHandle.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Utils/FunctionComparator.h"
#include <algorithm>
#include <cassert>
#include <iterator>
#include <set>
#include <utility>
#include <vector>
#include <map>

namespace llvm {

  class FunctionNode {
    mutable AssertingVH<Function> F;
    FunctionComparator::FunctionHash Hash;

  public:
    // Note the hash is recalculated potentially multiple times, but it is cheap.
    FunctionNode(Function *F)
      : F(F), Hash(FunctionComparator::functionHash(*F))  {}

    Function *getFunc() const { return F; }
    FunctionComparator::FunctionHash getHash() const { return Hash; }

    /// Replace the reference to the function F by the function G, assuming their
    /// implementations are equal.
    void replaceBy(Function *G) const {
      F = G;
    }
  };

  /// MergeFunc finds functions which will generate identical machine code,
  /// by considering all pointer types to be equivalent. Once identified,
  /// MergeFunc will fold them by replacing a call to one to a call to a
  /// bitcast of the other.
  class MergeFunc {
  public:
    MergeFunc() : FnTree(FunctionNodeCmp(&GlobalNumbers)) {
    }

    std::pair<bool, std::map<Function *, Function *>> runOnSet(std::set<Function *> &SF);

  private:
    // The function comparison operator is provided here so that FunctionNodes do
    // not need to become larger with another pointer.
    class FunctionNodeCmp {
      GlobalNumberState* GlobalNumbers;

    public:
      FunctionNodeCmp(GlobalNumberState* GN) : GlobalNumbers(GN) {}

      bool operator()(const FunctionNode &LHS, const FunctionNode &RHS) const {
        // Order first by hashes, then full function comparison.
        if (LHS.getHash() != RHS.getHash())
          return LHS.getHash() < RHS.getHash();
        FunctionComparator FCmp(LHS.getFunc(), RHS.getFunc(), GlobalNumbers);
        return FCmp.compare() < 0;
      }
    };
    using FnTreeType = std::set<FunctionNode, FunctionNodeCmp>;

    GlobalNumberState GlobalNumbers;

    /// A work queue of functions that may have been modified and should be
    /// analyzed again.
    std::vector<WeakTrackingVH> Deferred;

    /// Set of values marked as used in llvm.used and llvm.compiler.used.
    SmallPtrSet<GlobalValue *, 4> Used;

    /// Insert a ComparableFunction into the FnTree, or merge it away if it's
    /// equal to one that's already present.
    std::pair<bool, std::pair<Function *, Function *> > insert(Function *NewFunction);

    /// Remove a Function from the FnTree and queue it up for a second sweep of
    /// analysis.
    void remove(Function *F);

    /// Find the functions that use this Value and remove them from FnTree and
    /// queue the functions.
    void removeUsers(Value *V);

    /// Replace all direct calls of Old with calls of New. Will bitcast New if
    /// necessary to make types match.
    void replaceDirectCallers(Function *Old, Function *New);

    /// Merge two equivalent functions. Upon completion, G may be deleted, or may
    /// be converted into a thunk. In either case, it should never be visited
    /// again.
    void mergeTwoFunctions(Function *F, Function *G);

    /// Fill PDIUnrelatedWL with instructions from the entry block that are
    /// unrelated to parameter related debug info.
    void filterInstsUnrelatedToPDI(BasicBlock *GEntryBlock,
                                  std::vector<Instruction *> &PDIUnrelatedWL);

    /// Erase the rest of the CFG (i.e. barring the entry block).
    void eraseTail(Function *G);

    /// Erase the instructions in PDIUnrelatedWL as they are unrelated to the
    /// parameter debug info, from the entry block.
    void eraseInstsUnrelatedToPDI(std::vector<Instruction *> &PDIUnrelatedWL);

    /// Replace G with a simple tail call to bitcast(F). Also (unless
    /// MergeFuncPDI holds) replace direct uses of G with bitcast(F),
    /// delete G.
    void writeThunk(Function *F, Function *G);

    // Replace G with an alias to F (deleting function G)
    void writeAlias(Function *F, Function *G);

    // Replace G with an alias to F if possible, or a thunk to F if possible.
    // Returns false if neither is the case.
    bool writeThunkOrAlias(Function *F, Function *G);

    /// Replace function F with function G in the function tree.
    void replaceFunctionInTree(const FunctionNode &FN, Function *G);

    /// The set of all distinct functions. Use the insert() and remove() methods
    /// to modify it. The map allows efficient lookup and deferring of Functions.
    FnTreeType FnTree;

    // Map functions to the iterators of the FunctionNode which contains them
    // in the FnTree. This must be updated carefully whenever the FnTree is
    // modified, i.e. in insert(), remove(), and replaceFunctionInTree(), to avoid
    // dangling iterators into FnTree. The invariant that preserves this is that
    // there is exactly one mapping F -> FN for each FunctionNode FN in FnTree.
    DenseMap<AssertingVH<Function>, FnTreeType::iterator> FNodesInTree;
  };
} // end llvm namespace

#endif // LLVM_TRANSFORMS_IPO_MERGEFUNC_H
