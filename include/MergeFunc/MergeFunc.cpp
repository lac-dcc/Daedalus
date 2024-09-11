/**
 *  @file   MergeFunc.cpp
 *  @brief  This is a copy o LLVM's mergefunc implementation, that works on set of functions
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "MergeFunc.h"

using namespace llvm;

#define DEBUG_TYPE "MergeFuncDaedalus"

/// Check whether \p F is eligible for function merging.
static bool isEligibleForMerging(Function &F) {
  return !F.isDeclaration() && !F.hasAvailableExternallyLinkage();
}

bool MergeFunc::runOnSet(std::set<Function *> &SF) {
  bool Changed = false;

  // All functions in the module, ordered by hash. Functions with a unique
  // hash value are easily eliminated.
  std::vector<std::pair<FunctionComparator::FunctionHash, Function *>>
    HashedFuncs;
  for (Function *Func : SF) {
    if (isEligibleForMerging(*Func)) {
      HashedFuncs.push_back({FunctionComparator::functionHash(*Func), Func});
    }
  }

  llvm::stable_sort(HashedFuncs, less_first());

  auto S = HashedFuncs.begin();
  for (auto I = HashedFuncs.begin(), IE = HashedFuncs.end(); I != IE; ++I) {
    // If the hash value matches the previous value or the next one, we must
    // consider merging it. Otherwise it is dropped and never considered again.
    if ((I != S && std::prev(I)->first == I->first) ||
        (std::next(I) != IE && std::next(I)->first == I->first) ) {
      Deferred.push_back(WeakTrackingVH(I->second));
    }
  }

  do {
    std::vector<WeakTrackingVH> Worklist;
    Deferred.swap(Worklist);

    LLVM_DEBUG(dbgs() << "size of module: " << SF.size() << '\n');
    LLVM_DEBUG(dbgs() << "size of worklist: " << Worklist.size() << '\n');

    // Insert functions and merge them.
    for (WeakTrackingVH &I : Worklist) {
      if (!I)
        continue;
      Function *F = cast<Function>(I);
      if (!F->isDeclaration() && !F->hasAvailableExternallyLinkage()) {
        Changed |= insert(F);
      }
    }
    LLVM_DEBUG(dbgs() << "size of FnTree: " << FnTree.size() << '\n');
  } while (!Deferred.empty());

  FnTree.clear();
  FNodesInTree.clear();
  GlobalNumbers.clear();
  Used.clear();

  return Changed;
}

// Replace direct callers of Old with New.
void MergeFunc::replaceDirectCallers(Function *Old, Function *New) {
  Constant *BitcastNew = ConstantExpr::getBitCast(New, Old->getType());
  for (Use &U : llvm::make_early_inc_range(Old->uses())) {
    CallBase *CB = dyn_cast<CallBase>(U.getUser());
    if (CB && CB->isCallee(&U)) {
      // Do not copy attributes from the called function to the call-site.
      // Function comparison ensures that the attributes are the same up to
      // type congruences in byval(), in which case we need to keep the byval
      // type of the call-site, not the callee function.
      remove(CB->getFunction());
      U.set(BitcastNew);
    }
  }
}

// Helper for writeThunk,
// Selects proper bitcast operation,
// but a bit simpler then CastInst::getCastOpcode.
static Value *createCast(IRBuilder<> &Builder, Value *V, Type *DestTy) {
  Type *SrcTy = V->getType();
  if (SrcTy->isStructTy()) {
    assert(DestTy->isStructTy());
    assert(SrcTy->getStructNumElements() == DestTy->getStructNumElements());
    Value *Result = PoisonValue::get(DestTy);
    for (unsigned int I = 0, E = SrcTy->getStructNumElements(); I < E; ++I) {
      Value *Element =
          createCast(Builder, Builder.CreateExtractValue(V, ArrayRef(I)),
                     DestTy->getStructElementType(I));

      Result = Builder.CreateInsertValue(Result, Element, ArrayRef(I));
    }
    return Result;
  }
  assert(!DestTy->isStructTy());
  if (SrcTy->isIntegerTy() && DestTy->isPointerTy())
    return Builder.CreateIntToPtr(V, DestTy);
  else if (SrcTy->isPointerTy() && DestTy->isIntegerTy())
    return Builder.CreatePtrToInt(V, DestTy);
  else
    return Builder.CreateBitCast(V, DestTy);
}

// Erase the instructions in PDIUnrelatedWL as they are unrelated to the
// parameter debug info, from the entry block.
void MergeFunc::eraseInstsUnrelatedToPDI(
    std::vector<Instruction *> &PDIUnrelatedWL) {
  LLVM_DEBUG(
      dbgs() << " Erasing instructions (in reverse order of appearance in "
                "entry block) unrelated to parameter debug info from entry "
                "block: {\n");
  while (!PDIUnrelatedWL.empty()) {
    Instruction *I = PDIUnrelatedWL.back();
    LLVM_DEBUG(dbgs() << "  Deleting Instruction: ");
    LLVM_DEBUG(I->print(dbgs()));
    LLVM_DEBUG(dbgs() << "\n");
    I->eraseFromParent();
    PDIUnrelatedWL.pop_back();
  }
  LLVM_DEBUG(dbgs() << " } // Done erasing instructions unrelated to parameter "
                       "debug info from entry block. \n");
}

// Reduce G to its entry block.
void MergeFunc::eraseTail(Function *G) {
  std::vector<BasicBlock *> WorklistBB;
  for (BasicBlock &BB : drop_begin(*G)) {
    BB.dropAllReferences();
    WorklistBB.push_back(&BB);
  }
  while (!WorklistBB.empty()) {
    BasicBlock *BB = WorklistBB.back();
    BB->eraseFromParent();
    WorklistBB.pop_back();
  }
}

// We are interested in the following instructions from the entry block as being
// related to parameter debug info:
// - @llvm.dbg.declare
// - stores from the incoming parameters to locations on the stack-frame
// - allocas that create these locations on the stack-frame
// - @llvm.dbg.value
// - the entry block's terminator
// The rest are unrelated to debug info for the parameters; fill up
// PDIUnrelatedWL with such instructions.
void MergeFunc::filterInstsUnrelatedToPDI(
    BasicBlock *GEntryBlock, std::vector<Instruction *> &PDIUnrelatedWL) {
  std::set<Instruction *> PDIRelated;
  for (BasicBlock::iterator BI = GEntryBlock->begin(), BIE = GEntryBlock->end();
       BI != BIE; ++BI) {
    if (auto *DVI = dyn_cast<DbgValueInst>(&*BI)) {
      LLVM_DEBUG(dbgs() << " Deciding: ");
      LLVM_DEBUG(BI->print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
      DILocalVariable *DILocVar = DVI->getVariable();
      if (DILocVar->isParameter()) {
        LLVM_DEBUG(dbgs() << "  Include (parameter): ");
        LLVM_DEBUG(BI->print(dbgs()));
        LLVM_DEBUG(dbgs() << "\n");
        PDIRelated.insert(&*BI);
      } else {
        LLVM_DEBUG(dbgs() << "  Delete (!parameter): ");
        LLVM_DEBUG(BI->print(dbgs()));
        LLVM_DEBUG(dbgs() << "\n");
      }
    } else if (auto *DDI = dyn_cast<DbgDeclareInst>(&*BI)) {
      LLVM_DEBUG(dbgs() << " Deciding: ");
      LLVM_DEBUG(BI->print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
      DILocalVariable *DILocVar = DDI->getVariable();
      if (DILocVar->isParameter()) {
        LLVM_DEBUG(dbgs() << "  Parameter: ");
        LLVM_DEBUG(DILocVar->print(dbgs()));
        AllocaInst *AI = dyn_cast_or_null<AllocaInst>(DDI->getAddress());
        if (AI) {
          LLVM_DEBUG(dbgs() << "  Processing alloca users: ");
          LLVM_DEBUG(dbgs() << "\n");
          for (User *U : AI->users()) {
            if (StoreInst *SI = dyn_cast<StoreInst>(U)) {
              if (Value *Arg = SI->getValueOperand()) {
                if (isa<Argument>(Arg)) {
                  LLVM_DEBUG(dbgs() << "  Include: ");
                  LLVM_DEBUG(AI->print(dbgs()));
                  LLVM_DEBUG(dbgs() << "\n");
                  PDIRelated.insert(AI);
                  LLVM_DEBUG(dbgs() << "   Include (parameter): ");
                  LLVM_DEBUG(SI->print(dbgs()));
                  LLVM_DEBUG(dbgs() << "\n");
                  PDIRelated.insert(SI);
                  LLVM_DEBUG(dbgs() << "  Include: ");
                  LLVM_DEBUG(BI->print(dbgs()));
                  LLVM_DEBUG(dbgs() << "\n");
                  PDIRelated.insert(&*BI);
                } else {
                  LLVM_DEBUG(dbgs() << "   Delete (!parameter): ");
                  LLVM_DEBUG(SI->print(dbgs()));
                  LLVM_DEBUG(dbgs() << "\n");
                }
              }
            } else {
              LLVM_DEBUG(dbgs() << "   Defer: ");
              LLVM_DEBUG(U->print(dbgs()));
              LLVM_DEBUG(dbgs() << "\n");
            }
          }
        } else {
          LLVM_DEBUG(dbgs() << "  Delete (alloca NULL): ");
          LLVM_DEBUG(BI->print(dbgs()));
          LLVM_DEBUG(dbgs() << "\n");
        }
      } else {
        LLVM_DEBUG(dbgs() << "  Delete (!parameter): ");
        LLVM_DEBUG(BI->print(dbgs()));
        LLVM_DEBUG(dbgs() << "\n");
      }
    } else if (BI->isTerminator() && &*BI == GEntryBlock->getTerminator()) {
      LLVM_DEBUG(dbgs() << " Will Include Terminator: ");
      LLVM_DEBUG(BI->print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
      PDIRelated.insert(&*BI);
    } else {
      LLVM_DEBUG(dbgs() << " Defer: ");
      LLVM_DEBUG(BI->print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
    }
  }
  LLVM_DEBUG(
      dbgs()
      << " Report parameter debug info related/related instructions: {\n");
  for (Instruction &I : *GEntryBlock) {
    if (PDIRelated.find(&I) == PDIRelated.end()) {
      LLVM_DEBUG(dbgs() << "  !PDIRelated: ");
      LLVM_DEBUG(I.print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
      PDIUnrelatedWL.push_back(&I);
    } else {
      LLVM_DEBUG(dbgs() << "   PDIRelated: ");
      LLVM_DEBUG(I.print(dbgs()));
      LLVM_DEBUG(dbgs() << "\n");
    }
  }
  LLVM_DEBUG(dbgs() << " }\n");
}

/// Whether this function may be replaced by a forwarding thunk.
static bool canCreateThunkFor(Function *F) {
  if (F->isVarArg())
    return false;

  // Don't merge tiny functions using a thunk, since it can just end up
  // making the function larger.
  if (F->size() == 1) {
    if (F->front().size() <= 2) {
      LLVM_DEBUG(dbgs() << "canCreateThunkFor: " << F->getName()
                        << " is too small to bother creating a thunk for\n");
      return false;
    }
  }
  return true;
}

// Replace G with a simple tail call to bitcast(F). Also (unless
// MergeFunctionsPDI holds) replace direct uses of G with bitcast(F),
// delete G. Under MergeFunctionsPDI, we use G itself for creating
// the thunk as we preserve the debug info (and associated instructions)
// from G's entry block pertaining to G's incoming arguments which are
// passed on as corresponding arguments in the call that G makes to F.
// For better debugability, under MergeFunctionsPDI, we do not modify G's
// call sites to point to F even when within the same translation unit.
void MergeFunc::writeThunk(Function *F, Function *G) {
  BasicBlock *GEntryBlock = nullptr;
  std::vector<Instruction *> PDIUnrelatedWL;
  BasicBlock *BB = nullptr;
  Function *NewG = nullptr;
  /*if (MergeFunctionsPDI) {
    LLVM_DEBUG(dbgs() << "writeThunk: (MergeFunctionsPDI) Do not create a new "
                         "function as thunk; retain original: "
                      << G->getName() << "()\n");
    GEntryBlock = &G->getEntryBlock();
    LLVM_DEBUG(
        dbgs() << "writeThunk: (MergeFunctionsPDI) filter parameter related "
                  "debug info for "
               << G->getName() << "() {\n");
    filterInstsUnrelatedToPDI(GEntryBlock, PDIUnrelatedWL);
    GEntryBlock->getTerminator()->eraseFromParent();
    BB = GEntryBlock;
  } else {*/
    NewG = Function::Create(G->getFunctionType(), G->getLinkage(),
                            G->getAddressSpace(), "", G->getParent());
    NewG->setComdat(G->getComdat());
    BB = BasicBlock::Create(F->getContext(), "", NewG);
  // }

  IRBuilder<> Builder(BB);
  Function *H = /*MergeFunctionsPDI ? G :*/ NewG;
  SmallVector<Value *, 16> Args;
  unsigned i = 0;
  FunctionType *FFTy = F->getFunctionType();
  for (Argument &AI : H->args()) {
    Args.push_back(createCast(Builder, &AI, FFTy->getParamType(i)));
    ++i;
  }

  CallInst *CI = Builder.CreateCall(F, Args);
  ReturnInst *RI = nullptr;
  bool isSwiftTailCall = F->getCallingConv() == CallingConv::SwiftTail &&
                         G->getCallingConv() == CallingConv::SwiftTail;
  CI->setTailCallKind(isSwiftTailCall ? llvm::CallInst::TCK_MustTail
                                      : llvm::CallInst::TCK_Tail);
  CI->setCallingConv(F->getCallingConv());
  CI->setAttributes(F->getAttributes());
  if (H->getReturnType()->isVoidTy()) {
    RI = Builder.CreateRetVoid();
  } else {
    RI = Builder.CreateRet(createCast(Builder, CI, H->getReturnType()));
  }

  /*if (MergeFunctionsPDI) {
    DISubprogram *DIS = G->getSubprogram();
    if (DIS) {
      DebugLoc CIDbgLoc =
          DILocation::get(DIS->getContext(), DIS->getScopeLine(), 0, DIS);
      DebugLoc RIDbgLoc =
          DILocation::get(DIS->getContext(), DIS->getScopeLine(), 0, DIS);
      CI->setDebugLoc(CIDbgLoc);
      RI->setDebugLoc(RIDbgLoc);
    } else {
      LLVM_DEBUG(
          dbgs() << "writeThunk: (MergeFunctionsPDI) No DISubprogram for "
                 << G->getName() << "()\n");
    }
    eraseTail(G);
    eraseInstsUnrelatedToPDI(PDIUnrelatedWL);
    LLVM_DEBUG(
        dbgs() << "} // End of parameter related debug info filtering for: "
               << G->getName() << "()\n");
  } else {*/
    NewG->copyAttributesFrom(G);
    NewG->takeName(G);
    removeUsers(G);
    G->replaceAllUsesWith(NewG);
    G->eraseFromParent();
  // }

  LLVM_DEBUG(dbgs() << "writeThunk: " << H->getName() << '\n');
  // ++NumThunksWritten;
}

// Whether this function may be replaced by an alias
static bool canCreateAliasFor(Function *F) {
  if (/*!MergeFunctionsAliases ||*/ !F->hasGlobalUnnamedAddr())
    return false;

  // We should only see linkages supported by aliases here
  assert(F->hasLocalLinkage() || F->hasExternalLinkage()
      || F->hasWeakLinkage() || F->hasLinkOnceLinkage());
  return true;
}

// Replace G with an alias to F (deleting function G)
void MergeFunc::writeAlias(Function *F, Function *G) {
  Constant *BitcastF = ConstantExpr::getBitCast(F, G->getType());
  PointerType *PtrType = G->getType();
  auto *GA = GlobalAlias::create(G->getValueType(), PtrType->getAddressSpace(),
                                 G->getLinkage(), "", BitcastF, G->getParent());

  const MaybeAlign FAlign = F->getAlign();
  const MaybeAlign GAlign = G->getAlign();
  if (FAlign || GAlign)
    F->setAlignment(std::max(FAlign.valueOrOne(), GAlign.valueOrOne()));
  else
    F->setAlignment(std::nullopt);
  GA->takeName(G);
  GA->setVisibility(G->getVisibility());
  GA->setUnnamedAddr(GlobalValue::UnnamedAddr::Global);

  removeUsers(G);
  G->replaceAllUsesWith(GA);
  G->eraseFromParent();

  LLVM_DEBUG(dbgs() << "writeAlias: " << GA->getName() << '\n');
  // ++NumAliasesWritten;
}

// Replace G with an alias to F if possible, or a thunk to F if
// profitable. Returns false if neither is the case.
bool MergeFunc::writeThunkOrAlias(Function *F, Function *G) {
  if (canCreateAliasFor(G)) {
    writeAlias(F, G);
    return true;
  }
  if (canCreateThunkFor(F)) {
    writeThunk(F, G);
    return true;
  }
  return false;
}

// Merge two equivalent functions. Upon completion, Function G is deleted.
void MergeFunc::mergeTwoFunctions(Function *F, Function *G) {
  if (F->isInterposable()) {
    assert(G->isInterposable());

    // Both writeThunkOrAlias() calls below must succeed, either because we can
    // create aliases for G and NewF, or because a thunk for F is profitable.
    // F here has the same signature as NewF below, so that's what we check.
    if (!canCreateThunkFor(F) &&
        (!canCreateAliasFor(F) || !canCreateAliasFor(G)))
      return;

    // Make them both thunks to the same internal function.
    Function *NewF = Function::Create(F->getFunctionType(), F->getLinkage(),
                                      F->getAddressSpace(), "", F->getParent());
    NewF->copyAttributesFrom(F);
    NewF->takeName(F);
    removeUsers(F);
    F->replaceAllUsesWith(NewF);

    // We collect alignment before writeThunkOrAlias that overwrites NewF and
    // G's content.
    const MaybeAlign NewFAlign = NewF->getAlign();
    const MaybeAlign GAlign = G->getAlign();

    writeThunkOrAlias(F, G);
    writeThunkOrAlias(F, NewF);

    if (NewFAlign || GAlign)
      F->setAlignment(std::max(NewFAlign.valueOrOne(), GAlign.valueOrOne()));
    else
      F->setAlignment(std::nullopt);
    F->setLinkage(GlobalValue::PrivateLinkage);
    // ++NumDoubleWeak;
    // ++NumFunctionsMerged;
  } else {
    // For better debugability, under MergeFunctionsPDI, we do not modify G's
    // call sites to point to F even when within the same translation unit.
    if (!G->isInterposable() /*&& !MergeFunctionsPDI*/) {
      // Functions referred to by llvm.used/llvm.compiler.used are special:
      // there are uses of the symbol name that are not visible to LLVM,
      // usually from inline asm.
      if (G->hasGlobalUnnamedAddr() && !Used.contains(G)) {
        // G might have been a key in our GlobalNumberState, and it's illegal
        // to replace a key in ValueMap<GlobalValue *> with a non-global.
        GlobalNumbers.erase(G);
        // If G's address is not significant, replace it entirely.
        Constant *BitcastF = ConstantExpr::getBitCast(F, G->getType());
        removeUsers(G);
        G->replaceAllUsesWith(BitcastF);
      } else {
        // Redirect direct callers of G to F. (See note on MergeFunctionsPDI
        // above).
        replaceDirectCallers(G, F);
      }
    }

    // If G was internal then we may have replaced all uses of G with F. If so,
    // stop here and delete G. There's no need for a thunk. (See note on
    // MergeFunctionsPDI above).
    if (G->isDiscardableIfUnused() && G->use_empty() /*&& !MergeFunctionsPDI*/) {
      G->eraseFromParent();
      // ++NumFunctionsMerged;
      return;
    }

    if (writeThunkOrAlias(F, G)) {
      // ++NumFunctionsMerged;
    }
  }
}

/// Replace function F by function G.
void MergeFunc::replaceFunctionInTree(const FunctionNode &FN,
                                           Function *G) {
  Function *F = FN.getFunc();
  assert(FunctionComparator(F, G, &GlobalNumbers).compare() == 0 &&
         "The two functions must be equal");

  auto I = FNodesInTree.find(F);
  assert(I != FNodesInTree.end() && "F should be in FNodesInTree");
  assert(FNodesInTree.count(G) == 0 && "FNodesInTree should not contain G");

  FnTreeType::iterator IterToFNInFnTree = I->second;
  assert(&(*IterToFNInFnTree) == &FN && "F should map to FN in FNodesInTree.");
  // Remove F -> FN and insert G -> FN
  FNodesInTree.erase(I);
  FNodesInTree.insert({G, IterToFNInFnTree});
  // Replace F with G in FN, which is stored inside the FnTree.
  FN.replaceBy(G);
}

// Ordering for functions that are equal under FunctionComparator
static bool isFuncOrderCorrect(const Function *F, const Function *G) {
  if (F->isInterposable() != G->isInterposable()) {
    // Strong before weak, because the weak function may call the strong
    // one, but not the other way around.
    return !F->isInterposable();
  }
  if (F->hasLocalLinkage() != G->hasLocalLinkage()) {
    // External before local, because we definitely have to keep the external
    // function, but may be able to drop the local one.
    return !F->hasLocalLinkage();
  }
  // Impose a total order (by name) on the replacement of functions. This is
  // important when operating on more than one module independently to prevent
  // cycles of thunks calling each other when the modules are linked together.
  return F->getName() <= G->getName();
}

// Insert a ComparableFunction into the FnTree, or merge it away if equal to one
// that was already inserted.
bool MergeFunc::insert(Function *NewFunction) {
  std::pair<FnTreeType::iterator, bool> Result =
      FnTree.insert(FunctionNode(NewFunction));

  if (Result.second) {
    assert(FNodesInTree.count(NewFunction) == 0);
    FNodesInTree.insert({NewFunction, Result.first});
    LLVM_DEBUG(dbgs() << "Inserting as unique: " << NewFunction->getName()
                      << '\n');
    return false;
  }

  const FunctionNode &OldF = *Result.first;

  if (!isFuncOrderCorrect(OldF.getFunc(), NewFunction)) {
    // Swap the two functions.
    Function *F = OldF.getFunc();
    replaceFunctionInTree(*Result.first, NewFunction);
    NewFunction = F;
    assert(OldF.getFunc() != F && "Must have swapped the functions.");
  }

  LLVM_DEBUG(dbgs() << "  " << OldF.getFunc()->getName()
                    << " == " << NewFunction->getName() << '\n');

  Function *DeleteF = NewFunction;
  mergeTwoFunctions(OldF.getFunc(), DeleteF);
  return true;
}

// Remove a function from FnTree. If it was already in FnTree, add
// it to Deferred so that we'll look at it in the next round.
void MergeFunc::remove(Function *F) {
  auto I = FNodesInTree.find(F);
  if (I != FNodesInTree.end()) {
    LLVM_DEBUG(dbgs() << "Deferred " << F->getName() << ".\n");
    FnTree.erase(I->second);
    // I->second has been invalidated, remove it from the FNodesInTree map to
    // preserve the invariant.
    FNodesInTree.erase(I);
    Deferred.emplace_back(F);
  }
}

// For each instruction used by the value, remove() the function that contains
// the instruction. This should happen right before a call to RAUW.
void MergeFunc::removeUsers(Value *V) {
  for (User *U : V->users())
    if (auto *I = dyn_cast<Instruction>(U))
      remove(I->getFunction());
}
