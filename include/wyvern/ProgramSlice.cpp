/**
 *  @file   ProgramSlice.cpp
 *  @brief  Daedalus' Program Slicer Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "ProgramSlice.h"
// #include "DebugUtils.h"

#include <map>
#include <queue>
#include <set>
#include <tuple>
#include <unordered_map>
#include <utility>

#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/Analysis/CaptureTracking.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/MemoryLocation.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/Local.h"

#include <random>

#define DEBUG_TYPE "ProgramSlicing"

using namespace llvm;

/**
 * @brief Returns the block whose predicate should control the phi-functions in
 * the given basic block.
 *
 * @details This function determines the controlling block for the phi-functions
 * in the specified basic block (BB). It traverses the dominator tree (DT) to
 * find a block that does not dominate BB in the post-dominator tree (PDT).
 *
 * @param BB The basic block for which to find the controlling block.
 * @param DT The dominator tree.
 * @param PDT The post-dominator tree.
 * @return A pointer to the controlling basic block, or NULL if no such block is
 * found.
 */
static const BasicBlock *getController(const BasicBlock *BB, DominatorTree &DT,
                                       PostDominatorTree &PDT) {
  const DomTreeNode *dom_node = DT.getNode(BB);
  while (dom_node) {
    const BasicBlock *dom_BB = dom_node->getBlock();
    if (!PDT.dominates(BB, dom_BB)) {
      return dom_BB;
    } else {
      dom_node = dom_node->getIDom();
    }
  }
  return NULL;
}

/**
 * @brief Returns the predicate of the given basic block, which will be used to
 * gate another basic block's phi-functions.
 *
 * @details This function retrieves the condition that will gate the
 * phi-functions of another basic block. It examines the terminator instruction
 * of the given basic block (BB) and extracts the condition from a conditional
 * branch instruction or a switch instruction.
 *
 * @param BB The basic block whose predicate is to be returned.
 * @return A pointer to the condition value, or nullptr if no valid condition is
 * found.
 */
static const Value *getGate(const BasicBlock *BB) {
  const Value *condition;

  const Instruction *terminator = BB->getTerminator();
  if (const BranchInst *BI = dyn_cast<BranchInst>(terminator)) {
    assert(BI->isConditional() && "Inconditional terminator!");
    condition = BI;
  }

  else if (const SwitchInst *SI = dyn_cast<SwitchInst>(terminator)) {
    condition = SI;
  }

  return condition;
}

/**
 * @brief Computes the gates for all basic blocks in the slice.
 *
 * @details This function calculates the gating conditions for each basic block
 * in a function. It constructs a map where each basic block is associated with
 * a vector of gating conditions. The gating conditions are derived from the
 * dominator and post-dominator trees of the function.
 *
 * @param F The function for which to compute the gates.
 * @return An unordered map where each basic block is mapped to a vector of its
 * gating conditions.
 */
static const std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
computeGates(Function &F) {
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates;
  DominatorTree DT(F);
  PostDominatorTree PDT;
  PDT.recalculate(F);
  for (const BasicBlock &BB : F) {
    SmallVector<const Value *> BB_gates;
    const unsigned num_preds = pred_size(&BB);
    if (num_preds > 1) {
      // LLVM_DEBUG(dbgs() << BB.getName() << ":\n");
      for (const BasicBlock *pred : predecessors(&BB)) {
        // LLVM_DEBUG(dbgs() << " - " << pred->getName() << " -> ");
        if (DT.dominates(pred, &BB) && !PDT.dominates(&BB, pred)) {
          // LLVM_DEBUG(dbgs() << " DOM " << getGate(pred)->getName() << " ->
          // ");
          BB_gates.push_back(getGate(pred));
        } else {
          const BasicBlock *ctrl_BB = getController(pred, DT, PDT);
          if (ctrl_BB) {
            // LLVM_DEBUG(dbgs() << " R-CTRL " << "CTRL_BB: " <<
            // ctrl_BB->getName()
            // << " " << getGate(ctrl_BB)->getName());
            BB_gates.push_back(getGate(ctrl_BB));
          }
        }
        // LLVM_DEBUG(dbgs() << ";\n");
      }
    }
    gates.emplace(std::make_pair(&BB, BB_gates));
  }
  return gates;
}

/**
 * @brief Computes the backwards data dependences for the given instruction.
 *
 * @details This function determines which instructions should be part of the
 * slice by computing the backwards data dependences for the specified
 * instruction. It uses phi-function gate information contained in the provided
 * gates to track control dependencies as data dependences. This comprehensive
 * approach is sufficient to compute all dependencies necessary for building a
 * slice.
 *
 * @param I The instruction for which to compute data dependences.
 * @param gates A map of basic blocks to their corresponding gating values.
 * @param PDT The post-dominator tree.
 * @return A tuple containing the set of basic blocks, the set of dependencies,
 * the vector of phi-function arguments, and a boolean flag indicating if the
 * criterion is a phi-node.
 */
static std::tuple<std::set<const BasicBlock *>, std::set<const Value *>,
                  std::vector<std::pair<Type *, StringRef>>, bool,
                  std::set<Value *>>
get_data_dependences_for(
    Instruction &I,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates,
    PostDominatorTree &PDT, Function &F, FunctionAnalysisManager &FAM) {

  std::set<const Value *> deps;
  std::set<const BasicBlock *> BBs;
  std::set<const Value *> visited;
  std::queue<const Value *> worklist;
  std::vector<std::pair<Type *, StringRef>> phiArguments;
  std::set<Instruction *> toRemoveDeps;
  std::set<Value *> phiOnArgs;

  toRemoveDeps.insert(&I);
  worklist.push(&I);
  deps.insert(&I);
  visited.insert(&I);
  bool phiCrit = false;

  while (!worklist.empty()) {
    const Value *cur = worklist.front();
    deps.insert(cur);
    visited.insert(cur);
    worklist.pop();

    if (const Instruction *dep = dyn_cast<Instruction>(cur)) {
      BBs.insert(dep->getParent());

      for (const Use &U : dep->operands()) {
        if (!isa<Instruction>(U) && !isa<Argument>(U)) continue;

        if (visited.count(U)) {
          if (isa<PHINode>(U) &&
              U == &I) { // Phi criterions that depends on itself
            deps.clear();
            Argument *arg = new Argument(U->getType(), U->getName());
            deps.insert(arg);
            deps.insert(&I);
            toRemoveDeps.clear();
            while (!worklist.empty()) worklist.pop();
            phiCrit = true;
            break;
          }
          continue;
        }

        if (const PHINode *u = dyn_cast<PHINode>(U)) {
          LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);
          Loop *L = LI.getLoopFor(I.getParent());
          if (!L) continue;

          BasicBlock *header = L->getHeader();
          if (!header)
            LLVM_DEBUG(errs()
                       << "Loop does not have a header on " << F.getName());

          if (u->getParent() == header) {
            phiOnArgs.insert(U);
            visited.insert(U);
            continue;
          }
        }
        // Cannot have side effects.
        visited.insert(U);
        worklist.push(U);
      }
    }
    if (phiCrit) break;

    if (const PHINode *PN = dyn_cast<PHINode>(cur)) {
      for (const BasicBlock *BB : PN->blocks()) {
        BBs.insert(BB);
      }
      for (const Value *gate : gates[PN->getParent()]) {
        if (gate && !visited.count(gate)) {
          worklist.push(gate);
        }
      }
    }
  }

  return std::make_tuple(BBs, deps, phiArguments, phiCrit, phiOnArgs);
}

/**
 * @brief Constructs a ProgramSlice object.
 *
 * @details This constructor initializes a ProgramSlice object by computing the
 * data and control dependencies of the given initial instruction within the
 * context of the specified function and post-dominator tree. It sets up the
 * necessary structures for representing the program slice, including the set of
 * instructions in the slice, dependency arguments, phi-function types, and
 * basic blocks in the slice. It also pre-computes struct types to avoid
 * redundant type creation and computes attractor blocks.
 *
 * @param Initial The initial instruction to be sliced.
 * @param F The function containing the initial instruction.
 * @param PDT The post-dominator tree of the function.
 */
ProgramSlice::ProgramSlice(Instruction &Initial, Function &F,
                           PostDominatorTree &PDT, FunctionAnalysisManager &FAM)
    : _initial(&Initial), _parentFunction(&F) {
  assert(Initial.getParent()->getParent() == &F &&
         "Slicing instruction from different function!");

  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates =
      computeGates(F);
  auto [BBsInSlice, valuesInSlice, phiTypes, phiCrit, phiOnArgs] =
      get_data_dependences_for(Initial, gates, PDT, F, FAM);
  _phiCrit = phiCrit;
  std::set<const Instruction *> instsInSlice;
  SmallVector<Value *> depArgs;
  for (auto &val : valuesInSlice) {
    if (Argument *A = dyn_cast<Argument>(const_cast<Value *>(val))) {
      depArgs.push_back(A);
    } else if (const Instruction *I = dyn_cast<Instruction>(val)) {
      instsInSlice.insert(I);
    }
  }
  for (auto &val : phiOnArgs) depArgs.push_back(val);
  if (isa<ReturnInst>(_initial)) {
    Value *FreturnValue = dyn_cast<ReturnInst>(_initial)->getReturnValue();
    _instRetValue = dyn_cast<Instruction>(FreturnValue);
  } else {
    _instRetValue = dyn_cast<Instruction>(_initial);
  }

  _instsInSlice = instsInSlice;
  _depArgs = depArgs;
  _phiDepArgs = phiTypes;
  _BBsInSlice = BBsInSlice;

  // We need to pre-compute struct types, because if we build it everytime
  // it's needed, LLVM creates multiple types with the same structure but
  // different names.
  _thunkStructType = computeStructType(false /*memo*/);
  _memoizedThunkStructType = computeStructType(true /*memo*/);

  computeAttractorBlocks();

  // LLVM_DEBUG(printSlice());
}

/**
 * @brief Computes the layout of the struct type used to lazify instances of
 * this delegate function.
 *
 * @details This function constructs and sets up the structure type that
 * should be used to represent thunks (lazified instances) of the delegate
 * function associated with this program slice. Depending on the `memo`
 * parameter, it includes additional fields for memoization purposes, such
 * as pointers to the delegate function, its return type, and a flag (if
 * `memo` is true). It also includes types for dependency arguments used by
 * the slice.
 *
 * @param memo Flag indicating whether to include memoization fields in the
 * struct type.
 * @return The computed StructType representing the thunk type for this
 * program slice.
 */
StructType *ProgramSlice::computeStructType(bool memo) {
  Module *M = _initial->getParent()->getParent()->getParent();
  LLVMContext &Ctx = M->getContext();

  StructType *thunkStructType = StructType::create(Ctx);
  PointerType *thunkStructPtrType = PointerType::get(thunkStructType, 0);
  FunctionType *delegateFunctionType =
      FunctionType::get(_initial->getType(), {thunkStructPtrType}, false);
  SmallVector<Type *> thunkTypes;
  if (memo) {
    thunkTypes = {delegateFunctionType->getPointerTo(),
                  delegateFunctionType->getReturnType(),
                  IntegerType::get(Ctx, 1)};
  } else {
    thunkTypes = {delegateFunctionType->getPointerTo()};
  }

  for (auto &arg : _depArgs) {
    thunkTypes.push_back(arg->getType());
  }

  thunkStructType->setBody(thunkTypes);
  thunkStructType->setName("_wyvern_thunk_type");

  return thunkStructType;
}

/**
 * @brief Retrieves the struct type representing thunks (lazified instances)
 * of this program slice's delegate function.
 *
 * @details This function returns either the memoized struct type
 * (_memoizedThunkStructType) or the non-memoized struct type
 * (_thunkStructType) based on the `memo` parameter. The struct type
 * represents the layout used to lazify instances of the delegate function
 * associated with this program slice.
 *
 * @param memo Flag indicating whether to retrieve the memoized struct type
 * (`true`) or the non-memoized struct type (`false`).
 * @return Pointer to the StructType representing the thunk type for this
 * program slice.
 */
StructType *ProgramSlice::getThunkStructType(bool memo) {
  if (memo) {
    return _memoizedThunkStructType;
  }
  return _thunkStructType;
}

/**
 * @brief Prints debugging information about the program slice.
 *
 * @details This function prints detailed information about the program
 * slice, including the slicing instruction, the function it belongs to, the
 * basic blocks in the slice, and the arguments used within the slice. This
 * information is useful for debugging and understanding the composition of
 * the program slice.
 */
void ProgramSlice::printSlice() {
  LLVM_DEBUG(dbgs() << "\n\n ==== Slicing instruction: [" << *_initial
                    << "] in function: " << _parentFunction->getName()
                    << " with size " << _parentFunction->size() << " ====\n");
  LLVM_DEBUG(dbgs() << "BBs in slice:\n");
  for (const BasicBlock *BB : _BBsInSlice) {
    LLVM_DEBUG(dbgs() << "\t" << BB->getName() << "\n");
    for (const Instruction &I : *BB) {
      if (_instsInSlice.count(&I)) {
        LLVM_DEBUG(dbgs() << "\t\t" << I << "\n";);
      }
    }
  }
  LLVM_DEBUG(dbgs() << "Arguments in slice:\n");
  for (const Value *A : _depArgs) {
    LLVM_DEBUG(dbgs() << "\t" << *A << "\n";);
  }
  LLVM_DEBUG(dbgs() << "============= \n\n");
}

/**
 * @brief Prints the original and sliced functions for debugging purposes.
 *
 * @details This function prints debugging information about the original
 * function from which the instruction is sliced, including the slicing
 * instruction itself, the function it belongs to, and the size of the
 * function. It also prints the sliced function provided as an argument `F`.
 * This helps in understanding the context and effect of slicing on the
 * function.
 *
 * @param F Pointer to the sliced function to be printed.
 */
void ProgramSlice::printFunctions(Function *F) {
  dbgs() << "\n\n ==== Slicing instruction: [" << *_initial
         << "] in function: " << _parentFunction->getName() << " with size "
         << _parentFunction->size() << " ====\n"
         << "\n======== SLICED FUNCTION ==========\n"
         << *F;
}

/**
 * @brief Computes the attractor blocks (first dominator) for each basic
 * block in the original function.
 *
 * @details This function calculates and stores the attractor blocks for
 * each basic block in the original function `_parentFunction`. An attractor
 * block is the immediate dominator (first dominator) of a basic block that
 * controls the flow into the basic block. The computed map of basic blocks
 * to their attractors is used to reroute control flow in the outlined
 * delegate function.
 *
 * @note The function assumes that `_BBsInSlice` contains the set of basic
 * blocks that are part of the program slice. Post-dominator tree (`PDT`) is
 * used to efficiently compute dominator information.
 */
void ProgramSlice::computeAttractorBlocks() {
  PostDominatorTree PDT;
  PDT.recalculate(*_parentFunction);
  std::map<const BasicBlock *, const BasicBlock *> attractors;

  for (const BasicBlock &BB : *_parentFunction) {
    if (attractors.count(&BB) > 0) {
      continue;
    }

    if (_BBsInSlice.count(&BB) > 0) {
      attractors[&BB] = &BB;
      continue;
    }

    DomTreeNode *OrigBB = PDT.getNode(&BB);
    DomTreeNode *Cand = OrigBB->getIDom();
    while (Cand != nullptr) {
      if (_BBsInSlice.count(Cand->getBlock()) > 0) {
        break;
      }
      Cand = Cand->getIDom();
    }
    if (Cand) {
      attractors[&BB] = Cand->getBlock();
    }
  }
  _attractors = attractors;
}

/**
 * @brief Adds branches from immediate dominators which existed in the
 * original function to the slice.
 *
 * @details This function traverses the dominator tree starting from the
 * current node `cur`. For each child node `child`, it recursively adds
 * branches to the slice if both `child` and its parent are part of
 * `_BBsInSlice`, indicating they are part of the program slice. It uses
 * `_origToNewBBmap` to map original basic blocks to their corresponding new
 * blocks in the slice.
 *
 * @param cur The current node in the dominator tree.
 * @param parent The parent node in the dominator tree.
 * @param visited Set of visited dominator tree nodes to avoid reprocessing.
 */
void ProgramSlice::addDomBranches(DomTreeNode *cur, DomTreeNode *parent,
                                  std::set<DomTreeNode *> &visited) {
  if (_BBsInSlice.count(cur->getBlock())) {
    parent = cur;
  }

  for (DomTreeNode *child : *cur) {
    if (!visited.count(child)) {
      visited.insert(child);
      addDomBranches(child, parent, visited);
    }
    if (_BBsInSlice.count(child->getBlock()) && parent) {
      BasicBlock *parentBB = _origToNewBBmap[parent->getBlock()];
      BasicBlock *childBB = _origToNewBBmap[child->getBlock()];
      if (parentBB->getTerminator() == nullptr) {
        BranchInst *newBranch = BranchInst::Create(childBB, parentBB);
      }
    }
  }
}

/**
 * @brief Updates PHINodes after cloning to remove incoming blocks not
 * included in the slice.
 *
 * @details When cloning PHINodes from the original function to the new
 * function (slice), some PHINodes may have leftover incoming blocks which
 * were not included in the slice. This function removes these incoming
 * blocks from PHINodes, ensuring consistency in the slice.
 *
 * @param F The function whose PHINodes need to be updated.
 */
void updatePHINodes(Function *F) {
  for (BasicBlock &BB : *F) {
    std::set<BasicBlock *> preds(pred_begin(&BB), pred_end(&BB));
    for (auto I_it = BB.begin(); I_it != BB.end();) {
      PHINode *PN = dyn_cast<PHINode>(I_it);
      if (!PN) {
        break;
      }
      ++I_it;
      for (unsigned PI = 0, PE = PN->getNumIncomingValues(); PI != PE; ++PI) {
        BasicBlock *incBB = PN->getIncomingBlock(PI);
        if (incBB && !preds.count(incBB)) {
          PN->removeIncomingValue(incBB);
        }
      }
    }
  }
}

/**
 * @brief Reroutes branches in the slice to properly build control flow in
 * the delegate function.
 *
 * @details This function reroutes branches in the sliced function to ensure
 * that the control flow of the delegate function is correctly constructed
 * after instructions and basic blocks from the original function have
 * possibly been removed during slicing.
 *
 * @param F The function representing the sliced version of the original
 * function.
 */
void ProgramSlice::rerouteBranches(Function *F) {
  DominatorTree DT(*_parentFunction);
  std::set<DomTreeNode *> visited;
  DomTreeNode *parent = nullptr;

  DomTreeNode *init = DT.getRootNode();
  visited.insert(init);
  if (_BBsInSlice.count(init->getBlock())) {
    parent = init;
  }

  // Visit blocks recursively in order of dominance. If BB1 and BB2 are in
  // slice, BB1 IDom BB2, and BB1 has no terminator, create branch BB1->BB2
  addDomBranches(init, parent, visited);

  // Save list of PHI nodes to update. Old blocks should be replaced by
  // new blocks as predecessors in merging values. We store PHIs to update
  // at the end of the function to avoid invalidating iterators if we
  // modify in-place.
  std::map<PHINode *, std::pair<BasicBlock *, BasicBlock *>> PHIsToUpdate;

  // Add an unreachable block to be the target of branches that should
  // be removed.
  BasicBlock *unreachableBlock =
      BasicBlock::Create(F->getContext(), "_wyvern_unreachable", F);
  UnreachableInst *unreach =
      new UnreachableInst(F->getContext(), unreachableBlock);

  // Now iterate over every block in the slice...
  for (BasicBlock &BB : *F) {
    // If block still has no terminator, create an unconditional branch
    // routing it to its attractor.
    if (BB.getTerminator() == nullptr) {
      const BasicBlock *parentBB = _newToOrigBBmap[&BB];
      if (const BranchInst *origBranch =
              dyn_cast<BranchInst>(parentBB->getTerminator())) {
        for (const BasicBlock *suc : origBranch->successors()) {
          BasicBlock *newTarget = _origToNewBBmap[_attractors[suc]];
          if (!newTarget) {
            continue;
          }
          BranchInst::Create(newTarget, &BB);
          // If new successor has any PHINodes that merged a path from
          // a block that was dominated by this block, update its
          // incoming block to be this instead.
          for (Instruction &I : *newTarget) {
            if (!isa<PHINode>(I)) {
              continue;
            }
            PHINode *phi = cast<PHINode>(&I);
            for (BasicBlock *newTargetPHIBB : phi->blocks()) {
              if (newTargetPHIBB->getParent() != F) {
                DomTreeNode *OrigBB = DT.getNode(newTargetPHIBB);
                DomTreeNode *Cand = OrigBB->getIDom();
                while (Cand != nullptr) {
                  if (Cand->getBlock() == parentBB) {
                    break;
                  }
                  Cand = Cand->getIDom();
                }
                if (Cand) {
                  phi->replaceIncomingBlockWith(newTargetPHIBB, &BB);
                }
              }
            }
          }
          break;
        }
      }
    } else {
      // Otherwise, the block's original branch was part of the slice...
      Instruction *term = BB.getTerminator();
      if (BranchInst *BI = dyn_cast<BranchInst>(term)) {
        for (unsigned int idx = 0; idx < BI->getNumSuccessors(); ++idx) {
          BasicBlock *suc = BI->getSuccessor(idx);
          if (suc->getParent() == F) {
            continue;
          }
          const BasicBlock *attractor = _attractors[suc];
          BasicBlock *newSucc = _origToNewBBmap[attractor];

          if (!newSucc) {
            suc->replaceUsesWithIf(unreachableBlock, [F](Use &U) {
              auto *UserI = dyn_cast<Instruction>(U.getUser());
              return UserI && UserI->getParent()->getParent() == F;
            });
            BI->setSuccessor(idx, unreachableBlock);
            continue;
          }

          BI->setSuccessor(idx, newSucc);
          for (Instruction &I : *newSucc) {
            if (!isa<PHINode>(I)) {
              continue;
            }
            PHINode *phi = cast<PHINode>(&I);
            phi->replaceIncomingBlockWith(suc, &BB);
          }
        }
      } else if (SwitchInst *SI = dyn_cast<SwitchInst>(term)) {
        for (unsigned int idx = 0; idx < SI->getNumSuccessors(); ++idx) {
          BasicBlock *suc = SI->getSuccessor(idx);
          if (suc->getParent() == F) {
            continue;
          }
          const BasicBlock *attractor = _attractors[suc];
          BasicBlock *newSucc = _origToNewBBmap[attractor];

          if (!newSucc) {
            suc->replaceUsesWithIf(unreachableBlock, [F](Use &U) {
              auto *UserI = dyn_cast<Instruction>(U.getUser());
              return UserI && UserI->getParent()->getParent() == F;
            });
            SI->setSuccessor(idx, unreachableBlock);
            continue;
          }

          SI->setSuccessor(idx, newSucc);
          for (Instruction &I : *newSucc) {
            if (!isa<PHINode>(I)) {
              continue;
            }
            PHINode *phi = cast<PHINode>(&I);
            phi->replaceIncomingBlockWith(suc, &BB);
          }
        }
      }
    }
  }

  // If unreachable block was never used, remove it so we avoid mistaking it
  // as a potential entry block (due to it having no predecessors)
  if (unreachableBlock->hasNPredecessors(0)) {
    unreachableBlock->eraseFromParent();
  }

  updatePHINodes(F);
}

/**
 * @brief Retrieves the original function arguments as a SmallVector of
 * Values.
 *
 * @details This function returns a SmallVector containing the original
 * function arguments of the ProgramSlice instance.
 *
 * @return SmallVector<Value *> A vector containing the original function
 * arguments.
 */
SmallVector<Value *> ProgramSlice::getOrigFunctionArgs() {
  SmallVector<Value *> args;
  for (auto &arg : _depArgs) {
    args.push_back(cast<Value>(arg));
  }
  return args;
}

/**
 * @brief Inserts a new BasicBlock in Function F corresponding to the
 * originalBB from the original function being sliced.
 *
 * @details This function creates a new BasicBlock in the specified Function
 * F, named after the original BasicBlock originalBB from the original
 * function that is being sliced.
 *
 * @param originalBB The original BasicBlock from the original function to
 * be sliced.
 * @param F The Function where the new BasicBlock will be inserted.
 */
void ProgramSlice::insertNewBB(const BasicBlock *originalBB, Function *F) {
  auto originalName = originalBB->getName();
  std::string newBBName = "sliceclone_" + originalName.str();
  BasicBlock *newBB =
      BasicBlock::Create(F->getParent()->getContext(), newBBName, F);
  _origToNewBBmap.insert(std::make_pair(originalBB, newBB));
  _newToOrigBBmap.insert(std::make_pair(newBB, originalBB));
}

/**
 * @brief Populates function F with BasicBlocks corresponding to the BBs in
 * the original function being sliced which contained instructions included
 * in the slice.
 *
 * @details This function iterates over the BasicBlocks (_BBsInSlice) that
 * are part of the slice and inserts new BasicBlocks with corresponding
 * mappings into the specified Function F.
 *
 * @param F The Function where the new BasicBlocks will be inserted.
 */
void ProgramSlice::populateFunctionWithBBs(Function *F) {
  for (const BasicBlock *BB : _BBsInSlice) {
    insertNewBB(BB, F);
  }
}

/**
 * @brief Adds slice instructions to function F, corresponding to
 * instructions in the original function.
 *
 * @details This function iterates over all instructions in the original
 * function (_parentFunction), checking if each instruction is included in
 * the slice (_instsInSlice). If an instruction is part of the slice, a
 * corresponding cloned instruction is added to the corresponding BasicBlock
 * in function F.
 *
 * @param F The Function where the slice instructions will be populated.
 */
void ProgramSlice::populateBBsWithInsts(Function *F) {
  for (BasicBlock &BB : *_parentFunction) {
    for (Instruction &origInst : BB) {
      if (_instsInSlice.count(&origInst)) {
        Instruction *newInst = origInst.clone();
        newInst->setName(origInst.getName());
        _Imap.insert(std::make_pair(&origInst, newInst));
        IRBuilder<> builder(_origToNewBBmap[&BB]);
        builder.Insert(newInst);
      }
    }
  }
}

/**
 * @brief Fixes the instruction/argument/BB uses in new function F,
 * to use their corresponding versions in the sliced function, rather
 * than the originals from whom they were cloned.
 *
 * @details This function updates the uses of instructions, arguments, and
 * basic blocks in the newly created function F. It replaces uses of
 * original entities with their corresponding cloned entities from the slice
 * (_Imap). For PHINodes, it updates incoming blocks to refer to the new
 * basic blocks
 * (_origToNewBBmap).
 *
 * @param F The Function where uses are reorganized to use cloned entities
 * from the slice.
 */
void ProgramSlice::reorganizeUses(Function *F) {
  IRBuilder<> builder(F->getContext());

  for (auto &pair : _Imap) {
    Instruction *originalInst = pair.first;
    Instruction *newInst = pair.second;

    if (PHINode *PN = dyn_cast<PHINode>(newInst)) {
      for (BasicBlock *BB : PN->blocks()) {
        if (_origToNewBBmap.count(BB)) {
          PN->replaceIncomingBlockWith(BB, _origToNewBBmap[BB]);
        }
      }
    }

    originalInst->replaceUsesWithIf(newInst, [F](Use &U) {
      auto *UserI = dyn_cast<Instruction>(U.getUser());
      return UserI && UserI->getParent()->getParent() == F;
    });
  }
}

/**
 * @brief Adds terminating branches to BasicBlocks in function F,
 * for BBs whose branches were not included in the slice but
 * which are necessary to replicate the control flow of the
 * original function.
 *
 * @details This function iterates through all BasicBlocks in the function
 * F. If a BasicBlock does not already have a terminator instruction, it
 * clones the corresponding terminator from the original BasicBlock (via
 * _newToOrigBBmap) and inserts it into the BasicBlock in F.
 *
 * @param F The Function where missing terminators are added to replicate
 * control flow.
 */
void ProgramSlice::addMissingTerminators(Function *F) {
  for (BasicBlock &BB : *F) {
    if (BB.getTerminator() == nullptr) {
      const Instruction *originalTerminator =
          _newToOrigBBmap[&BB]->getTerminator();
      Instruction *newTerminator = originalTerminator->clone();
      IRBuilder<> builder(&BB);
      builder.Insert(newTerminator);
    }
  }
}

/**
 * @brief Reorders basic blocks in the new function F, ensuring
 * that the sliced function's entry block (the only one with no
 * predecessors) is first in the layout. This is necessary because LLVM
 * assumes the first block of a function is always its entry block.
 *
 * @details This function iterates through all BasicBlocks in the function F
 * to find the one that has no predecessors, which is designated as the
 * entry block of the sliced function. It then moves this block before the
 * current entry block of F to adjust the layout.
 *
 * @param F The Function where basic blocks are reordered to place the entry
 * block first.
 */
void ProgramSlice::reorderBlocks(Function *F) {
  BasicBlock *realEntry = nullptr;
  for (BasicBlock &BB : *F) {
    if (BB.hasNPredecessors(0)) {
      realEntry = &BB;
    }
  }
  realEntry->moveBefore(&F->getEntryBlock());
}

/**
 * @brief Adjusts references between the function arguments and the operands
 * of the instructions in function F.
 *
 * @details This function iterates through all instructions in the function
 * F. For each instruction, it iterates through its operands and compares
 * their names with the names of the function arguments. If a match is
 * found, it replaces the operand with the corresponding function argument.
 *
 * @param F The Function where references between arguments and instruction
 * operands are adjusted.
 */
void ProgramSlice::replaceArgs(Function *F, DenseMap<Value *, uint> dt) {

  for (Instruction &I : instructions(F)) {
    for (int j = 0; j < I.getNumOperands(); ++j) {
      for (int k = 0; k < F->arg_size(); ++k) {
        auto operand = I.getOperand(j);
        if (dt.count(operand)) {
          I.setOperand(j, F->getArg(dt[operand]));
        }
      }
    }
  };
}

/**
 * @brief A function to simplify basic blocks of a function using the same
 * method as the SimplifyCFGPass
 *
 * @details This function iteratively simplifies the CFG by visiting each
 * basic block and applying the llvm::simplifyCFG function. The process
 * stops when no more changes are made, or up to a maximum of 1000
 * iterations, whichever comes first.
 *
 * @param F Pointer to the Function to be simplified.
 * @param AM Reference to the FunctionAnalysisManager used to retrieve
 * TargetIRAnalysis result.
 */
void ProgramSlice::simplifyCfg(Function *F, FunctionAnalysisManager &AM) {
  auto &TTI = AM.getResult<TargetIRAnalysis>(*F);
  bool changed = false;
  bool localChange = true;

  unsigned iterationsCounter = 0;
  while (localChange) {
    assert(iterationsCounter++ < 1000 &&
           "Iterative simplification didn't converge!");
    localChange = false;
    for (Function::iterator BBIt = F->begin(); BBIt != F->end();) {
      BasicBlock &BB = *BBIt++;
      if (llvm::simplifyCFG(&BB, TTI)) {
        localChange = true;
      }
    }
    changed |= localChange;
  }
}

/**
 * @brief A function to merge two other functions using func-merging pass
 *
 * @details This function runs the MergeFunctions function from the
 * func-merging
 *
 * @param F1 First pointer to the first Function to be merged.
 * @param F2 Second pointer to the first Function to be merged.
 * @return Function Merging Result object
 */
// FunctionMergeResult ProgramSlice::mergeFunctions(Function *F1, Function
// *F2)
// {
//     if (F1->getParent() != F2->getParent())
//         return FunctionMergeResult(F1, F2, nullptr);
//     FunctionMerger Merger(F1->getParent());
//     FunctionMergingOptions Options = FunctionMergingOptions();
//     return Merger.merge(F1, F2, "", Options);
// }

/**
 * @brief Adds a return instruction to function F, returning the computed
 * value of the sliced function.
 *
 * @details This function inserts a return instruction into the exit block
 * of function F. Depending on the type of the initial instruction
 * (_initial), different return scenarios are handled:
 * - If _initial is a ReturnInst, it creates a return instruction returning
 * the value computed by _initial.
 * - If _initial is a CallInst, it checks if the called function has a void
 * return type; if so, it creates a return instruction with a nullptr return
 * value.
 * - If _phiCrit is set, it returns the argument corresponding to the phi
 * instruction criterion.
 *
 * @param F The Function where the return instruction is added.
 * @return The newly created ReturnInst.
 */
ReturnInst *ProgramSlice::addReturnValue(Function *F) {
  BasicBlock *exit = _Imap[_initial]->getParent();

  if (exit->getTerminator()) {
    exit->getTerminator()->eraseFromParent();
  }
  if (isa<ReturnInst>(_initial)) {
    if (Value *retType = dyn_cast<ReturnInst>(_initial)->getReturnValue()) {
      return ReturnInst::Create(F->getParent()->getContext(), retType, exit);
    }
  }
  dbgs() << *_initial << '\n';
  if (auto *callInst = dyn_cast<CallInst>(_initial)) {
    Function *ftype = callInst->getCalledFunction();
    if (ftype) {
      if (ftype->getReturnType()->isVoidTy())
        return ReturnInst::Create(F->getParent()->getContext(), nullptr, exit);
    }
  }
  // If PhiCrit was seted, just return the argument that correspondes to the\
    // phi instruction criterion. (i.e take an argument and return it)
  if (_phiCrit) {
    for (int k = 0; k < F->arg_size(); ++k) {
      Value *myArg = F->getArg(k);
      if (myArg->getName() == _initial->getName()) {
        return ReturnInst::Create(F->getParent()->getContext(), myArg, exit);
      }
    }
  }
  return ReturnInst::Create(F->getParent()->getContext(), _Imap[_initial],
                            exit);
}

/**
 * @brief Outlines the given slice into a standalone Function.
 *
 * @details This function creates a new standalone function (delegate
 * function) that encapsulates the computation of the original value with
 * respect to which the slice was created. The delegate function is given a
 * unique name to avoid naming conflicts, considering the original function
 * and the initial instruction from which the slice was derived. The
 * function type and arguments are derived from the dependencies (_depArgs)
 * of the slice, and its return type is determined based on the type of the
 * initial instruction.
 *
 * @return The newly created delegate Function that encapsulates the slice.
 */
Function *ProgramSlice::outline() {
  const int size = 3;
  if (_instsInSlice.size() < size) {
    LLVM_DEBUG(
        dbgs()
        << "Insufficient number of instructions to outline a new slice...\n");
    LLVM_DEBUG(dbgs() << "The slice must have at least " << size
                      << " instructions to be outlined...\n");
    return NULL;
  }
  StructType *thunkStructType = getThunkStructType(false);
  PointerType *thunkStructPtrType = thunkStructType->getPointerTo();

  // Get function's return type. If the function is an add of integers,
  // then the function must return an integer.
  Type *FreturnType;
  if (isa<ReturnInst>(_initial)) {
    FreturnType = dyn_cast<ReturnInst>(_initial)->getReturnValue()->getType();
  } else
    FreturnType = _initial->getType();

  // Get function's arguments
  SmallVector<Type *> v;
  SmallVector<StringRef> g;
  DenseMap<Value *, uint> dt;
  uint _i = 0;
  for (auto arg : _depArgs) {
    v.push_back(arg->getType());
    g.push_back(arg->getName());
    dt[arg] = _i++;
  }
  FunctionType *delegateFunctionType = FunctionType::get(FreturnType, v, false);

  // generate a random number to use as suffix for delegate function, to
  // avoid naming conflicts NOTE: we cannot use a simple counter that gets
  // incremented on every slice here, because when optimizing per
  // translation unit, the same function may be sliced across different
  // translation units
  std::random_device rd;
  std::mt19937 mt(rd());
  std::uniform_int_distribution<int64_t> dist(1, 1000000000);
  uint64_t random_num = dist(mt);
  std::string functionName =
      "_wyvern_slice_" + _parentFunction->getName().str() + "_" +
      _initial->getName().str() + "_" + std::to_string(random_num);
  Function *F =
      Function::Create(delegateFunctionType, Function::ExternalLinkage,
                       functionName, _parentFunction->getParent());

  // Let LLVM know that the delegate function is pure, so it can further
  // optimize calls to it

  AttrBuilder builder(_parentFunction->getContext());
  builder.addAttribute(Attribute::NoUnwind);
  builder.addAttribute(Attribute::NoInline);
  builder.addAttribute(Attribute::OptimizeForSize);
  builder.addAttribute(Attribute::WillReturn);
  builder.addAttribute("Daedalus", "1");
  F->addFnAttrs(builder);
  F->setLinkage(GlobalValue::LinkageTypes::InternalLinkage);

  int i = 0;
  for (Argument &arg : F->args()) arg.setName(g[i++]);

  populateFunctionWithBBs(F);
  populateBBsWithInsts(F);
  reorganizeUses(F);
  rerouteBranches(F);
  addReturnValue(F);
  reorderBlocks(F);
  replaceArgs(F, dt);
  verifyFunction(*F);
  return F;
}

/**
 * @brief Retrieves the mapping of original instructions to their
 * corresponding instructions in the sliced function.
 *
 * @details This function returns a map where each key is an original
 * instruction from the original function, and the corresponding value is
 * the cloned instruction that exists in the sliced function.
 *
 * @return A map of original instructions to their corresponding
 * instructions in the sliced function.
 */
std::map<Instruction *, Instruction *> ProgramSlice::getInstructionInSlice() {
  return _Imap;
}
