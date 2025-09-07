/**
 *  @file   ProgramSlice.cpp
 *  @brief  Daedalus' Program Slicer Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "ProgramSlice.h"

#include <map>
#include <queue>
#include <random>
#include <set>
#include <stack>
#include <tuple>
#include <utility>

#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/Analysis/CaptureTracking.h"
#include "llvm/Analysis/LoopInfo.h"
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
#include "llvm/IR/Value.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/Local.h"

#include "../include/PHIGateAnalyzer.h"
#include "../include/daedalus.h"

#define DEBUG_TYPE "ProgramSlice"

using namespace llvm;

struct dataDependence {
  SmallVector<const BasicBlock *> basicBlocks;
  SmallVector<const Value *> instructions;
  SmallVector<const Value *> functionArguments;
};

struct Status {
  bool status;
  std::string msg;
};

/**
 * @brief Checks if an operand is outside the loop or its header.
 *
 * This function checks if the given operand is a PHINode or an Instruction
 * that is either outside the specified loop or its header. If it is, the
 * operand is added to the function arguments set and marked as visited.
 *
 * @param operand The Value to check (PHINode or Instruction).
 * @param loop The Loop in which the operand should be checked.
 * @param loopHeader The header of the loop.
 * @return true if the operand is outside the loop or its header, false
 * otherwise.
 */
static const Value *isOperandOutsideLoopOrHeader(const Value *operand,
                                                 const Loop *loop,
                                                 const BasicBlock *loopHeader) {
  if (!loop || loop->isInvalid()) return nullptr;
  if (auto *phi = dyn_cast<PHINode>(operand)) {
    if (phi->getParent() == loopHeader) {
      LLVM_DEBUG(
          dbgs()
          << "\t\t\t\t--> Operand is a PHINode inside a loop header...\n");
      return operand;
    }
    if (!loop->contains(phi->getParent())) {
      LLVM_DEBUG(
          dbgs() << "\t\t\t\t--> Operand is a PHINode outside the current "
                    "criterion's loop...\n");
      return operand;
    }
  } else if (auto *inst = dyn_cast<Instruction>(operand)) {
    if (!loop->contains(inst->getParent())) {
      LLVM_DEBUG(dbgs() << "\t\t\t\t--> Operand is outside the current "
                           "criterion's loop...\n");
      return operand;
    }
  }
  return nullptr;
}

/**
 * @brief Retrieves data dependencies for a given instruction.
 *
 * This function analyzes the data dependencies of the specified instruction
 * within the context of its basic block, loop, and control flow graph. It
 * collects all operands, PHINodes, and predicates that are relevant to the
 * instruction's execution and returns them along with their status.
 *
 * @param I The instruction for which to retrieve data dependencies.
 * @param predicates A map of basic blocks to their controlling predicate
 * instructions.
 * @param loopInfo The loop information analysis for the function.
 * @param loop The loop containing the instruction, if any.
 * @param loopHeader The header of the loop containing the instruction.
 * @param DT The dominator tree for the function.
 * @param PDT The post-dominator tree for the function.
 * @return A pair containing the status of the operation and a dataDependence
 * object with collected dependencies.
 */
std::pair<Status, dataDependence> getDataDependencies(
    const Instruction &I,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
        &predicates,
    const Loop *loop, const BasicBlock *loopHeader, const DominatorTree &DT,
    const PostDominatorTree &PDT) {

  Status status = {true, ""};
  SmallVector<const Value *> deps;
  SmallVector<const BasicBlock *> BBs;
  std::queue<const Value *> worklist;
  SmallPtrSet<const Value *, 6> visited;
  SmallVector<const Value *> funcArgs;

  visited.insert(&I);
  worklist.push(&I);

  // Helper to process operands
  auto processOperand = [&](const Value *operand) {
    if (isa<GlobalVariable>(operand)) {
      status = {false, "Some dependency is on a Global Variable."};
      return false;
    }
    if (!isa<Instruction>(operand) && !isa<Argument>(operand)) return true;
    if (visited.count(operand)) return true;
    visited.insert(operand);
    LLVM_DEBUG(dbgs() << "\t\t\t[Data Dependency] Operand being processed: "
                      << *operand << "\n");

    if (isOperandOutsideLoopOrHeader(operand, loop, loopHeader)) {
      funcArgs.push_back(operand);
      return true;
    }

    worklist.push(operand);
    return true;
  };

  // Process worklist
  while (!worklist.empty()) {
    const Value *cur = worklist.front();
    worklist.pop();

    deps.push_back(cur);

    if (const auto *dep = dyn_cast<Instruction>(cur)) {
      LLVM_DEBUG(dbgs() << "\t\t[Data Dependency] Instruction being processed: "
                        << *dep << "\n");

      const BasicBlock *currentDepBB = dep->getParent();
      BBs.push_back(currentDepBB);

      for (const Use &U : dep->operands())
        if (!processOperand(U.get())) break;
    }

    if (const auto *phi = dyn_cast<PHINode>(cur)) {
      LLVM_DEBUG(dbgs() << "\t\t[Control Dependency] PHINode being processed: "
                        << *phi << "\n");

      for (const auto *incomingBB : phi->blocks()) {
        BBs.push_back(incomingBB);
      }

      for (const Value *predicate : predicates[phi->getParent()]) {
        if (predicate && !visited.count(predicate)) {
          if (auto *predicateInst = dyn_cast<Instruction>(predicate)) {
            LLVM_DEBUG(dbgs()
                       << "\t\t\t[Control Dependency] Pushing predicate (from "
                       << predicateInst->getParent()->getName()
                       << "): " << *predicate << "\n");

            // ~special case~ if the predicate instruction is outside the
            // current slice criterion's loop, don't treat it as a dependency
            if (isOperandOutsideLoopOrHeader(predicate, loop, loopHeader)) {
              continue;
            }

            if (predicateInst->getParent() == I.getParent()) {
              continue;
            }

            worklist.push(predicate);
            visited.insert(predicate);
          }
        }
      }
    }
  }

  return {status, {BBs, deps, funcArgs}};
}

/**
 * @brief Constructs a ProgramSlice object for a given instruction in a
 * function.
 *
 * This constructor initializes the ProgramSlice by computing the predicates for
 * the function, analyzing the data dependencies of the initial instruction,
 * and populating the slice with relevant instructions, basic blocks, and
 * arguments. It also checks if the slice can be outlined based on the
 * presence of try-catch blocks.
 *
 * @param Initial The initial instruction from which to create the slice.
 * @param F The function containing the initial instruction.
 * @param FAM The function analysis manager for accessing analyses like
 * LoopInfo.
 */
ProgramSlice::ProgramSlice(Instruction &Initial, Function &F,
                           FunctionAnalysisManager &FAM,
                           std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &predicates)
    : _initial(&Initial), _parentFunction(&F) {

  assert(Initial.getParent()->getParent() == &F &&
         "Slicing instruction from different function!");

  _loopInfo = &FAM.getResult<LoopAnalysis>(F);
  _loop = _loopInfo->getLoopFor(Initial.getParent());
  _loopHeader = (_loop) ? _loop->getHeader() : nullptr;
  DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);
  PostDominatorTree &PDT = FAM.getResult<PostDominatorTreeAnalysis>(F);

  LLVM_DEBUG({
    dbgs() << "\nPredicates mapping:\n";
    if (predicates.empty()) {
      dbgs() << "No gating conditions found for any PHI nodes.\n";
    } else {
      for (const auto &entry : predicates) {
        const BasicBlock *bb = entry.first;
        dbgs() << "  " << bb->getName() << ":\n\t\t";
        for (const Value *pred : entry.second) {
          if (const Instruction *inst = dyn_cast<Instruction>(pred)) {
            dbgs() << "[Instruction] " << *inst << "\n\t\t";
          } else {
            dbgs() << "[Value]\n\t\t";
          }
        }
        dbgs() << "\n";
      }
    }
  });

  auto [check, data] =
      getDataDependencies(Initial, predicates, _loop, _loopHeader, DT, PDT);

  if (!check.status) {
    _canOutline.first = check.status;
    _canOutline.second = check.msg;
    return;
  }

  std::set<const Instruction *> instsInSlice;
  SmallVector<Value *> depArgs;

  for (auto val : data.instructions) {
    if (auto *sliceArg = dyn_cast<Argument>(const_cast<Value *>(val))) {
      LLVM_DEBUG(
          dbgs() << "\tValue from data.dependences being inserted in depArgs: "
                 << *val << "\n");
      if (std::find(depArgs.begin(), depArgs.end(), sliceArg) == depArgs.end())
        depArgs.push_back(sliceArg);
    } else if (const auto *sliceInst = dyn_cast<Instruction>(val)) {
      if (!instsInSlice.count(sliceInst)) instsInSlice.insert(sliceInst);
    }
  }

  for (auto val : data.functionArguments) {
    LLVM_DEBUG(
        dbgs() << "\tValue from functionArguments being inserted in depArgs: "
               << *val << "\n");
    depArgs.push_back(const_cast<Value *>(val));
  };

  if (isa<ReturnInst>(_initial)) {
    Value *FreturnValue = dyn_cast<ReturnInst>(_initial)->getReturnValue();
    _instRetValue = dyn_cast<Instruction>(FreturnValue);
  } else {
    _instRetValue = dyn_cast<Instruction>(_initial);
  }

  _instsInSlice = instsInSlice;
  _depArgs = depArgs;
  _BBsInSlice = std::set(data.basicBlocks.begin(), data.basicBlocks.end());

  LLVM_DEBUG({
    dbgs() << "\nBasic blocks in _BBsInSlice:\n";
    for (const BasicBlock *BB : _BBsInSlice) {
      dbgs() << "\t" << BB->getName() << "\n";
    }
  });

  LLVM_DEBUG({
    dbgs() << "\n";
    dbgs() << "Instructions in _instsInSlice:\n";
    for (const auto *inst : _instsInSlice) {
      dbgs() << *inst << "\n";
    }
    dbgs() << "\n";
  });

  LLVM_DEBUG({
    dbgs() << "\n";
    dbgs() << "Arguments in _depArgs:\n";
    for (const auto *inst : _depArgs) {
      dbgs() << *inst << "\n";
    }
    dbgs() << "\n";
  });

  _firstDominators = computeFirstDominatorsInSlice();

  LLVM_DEBUG({
    dbgs() << "First dominators in slice:\n";
    for (const auto &entry : _firstDominators) {
      dbgs() << "  " << entry.first->getName() << " -> ";
      if (!entry.second.empty()) {
        for (auto bbIt = entry.second.begin(); bbIt != entry.second.end();
             ++bbIt) {
          const BasicBlock *bb = *bbIt;
          dbgs() << bb->getName() << ", ";
        }
      } else {
        dbgs() << "nullptr";
      }
      dbgs() << "\n";
    }
  });

  LLVM_DEBUG({
    dbgs() << "\nPredecessors of original function:\n";
    for (const BasicBlock &BB : *_parentFunction) {
      dbgs() << "\tBlock: " << BB.getName() << " -> Predecessors: ";
      for (const BasicBlock *pred : predecessors(&BB)) {
        dbgs() << pred->getName() << " ";
      }
      dbgs() << "\n";
    }
    dbgs() << "\n";
  });
}

/**
 * @brief Finds the first dominator in the slice for each basic block in the
 * parent function.
 *
 * An attractor is the first dominator of a basic block that is part of the
 * slice, starting from the immediate dominator and going up the dominator tree
 * until a block in the slice is found.
 *
 * @return A map from each basic block to its first dominator in the slice (if
 * any).
 */
std::map<const BasicBlock *, SmallVector<const BasicBlock *>>
ProgramSlice::computeFirstDominatorsInSlice() const {
  std::map<const BasicBlock *, SmallVector<const BasicBlock *>> firstDominators;
  const DominatorTree DT(*_parentFunction);
  for (auto &BB : *_parentFunction) {
    if (!_BBsInSlice.count(&BB)) continue;
    const DomTreeNode *OrigBB = DT.getNode(&BB);
    const DomTreeNode *Cand = OrigBB->getIDom();
    SmallVector<const BasicBlock *>
        dominators; // Note: this can be used to store all available ancestors
                    // of a valid Cand
    while (Cand != nullptr) {
      if (_BBsInSlice.count(Cand->getBlock()) > 0) {
        dominators.push_back(Cand->getBlock());
        break;
      }
      Cand = Cand->getIDom();
    }
    if (!dominators.empty()) {
      firstDominators[&BB] = dominators;
    }
  }
  return firstDominators;
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
      auto *PN = dyn_cast<PHINode>(I_it);
      if (!PN) {
        break;
      }
      ++I_it;
      std::set<BasicBlock *> S;
      for (unsigned PI = 0, PE = PN->getNumIncomingValues(); PI != PE; ++PI) {
        BasicBlock *incBB = PN->getIncomingBlock(PI);
        S.insert(incBB);
      }
      for (auto incBB : S) {
        if (incBB && !preds.count(incBB)) {
          PN->removeIncomingValue(incBB);
        }
      }
    }
  }
}

/**
 * @brief Determines if the program slice can be safely outlined into a new
 * function.
 *
 * This method checks various conditions to decide whether the current program
 * slice can be extracted (outlined) into a separate function. It verifies the
 * absence of try-catch blocks, analyzes memory dependencies, checks for
 * problematic allocas, ensures the slice is large enough but not too large, and
 * validates the number of function parameters. It also considers special cases
 * such as PHINodes and instructions that may throw exceptions.
 *
 * @param AA Pointer to the alias analysis results for the parent function.
 * @param TLI Reference to the target library information for the parent
 * function.
 * @param tryCatchBlocks Set of basic blocks that are part of try-catch
 * constructs.
 * @return true if the slice can be outlined, false otherwise.
 */
uint ProgramSlice::canOutline(
    AAResults *AA, TargetLibraryInfo &TLI,
    const std::set<const BasicBlock *> &tryCatchBlocks) const {
  const DominatorTree DT(*_parentFunction);
  auto LI = LoopInfo(DT);
  BatchAAResults BAA(*AA);
  AliasSetTracker AST(BAA);

  if (!_canOutline.first) {
    LLVM_DEBUG(dbgs() << _canOutline.second << '\n');
    return 0;
  }

  for (auto BB : _BBsInSlice) {
    if (tryCatchBlocks.count(BB)) {
      LLVM_DEBUG(dbgs() << "Cannot outline slice with try-catch blocks\n");
      return 0;
    }
  }

  if (constexpr int size = 3; _instsInSlice.size() < size) {
    LLVM_DEBUG(
        dbgs()
        << "Insufficient number of instructions to outline a new slice...\n");
    LLVM_DEBUG(dbgs() << "The slice must have at least " << size
                      << " instructions to be outlined...\n");
    return 0;
  }

  if (maxFuncSize.getNumOccurrences() > 0 &&
      _instsInSlice.size() > maxFuncSize) {
    LLVM_DEBUG(dbgs() << "Slice too big to outline, size: "
                      << _instsInSlice.size() << ", max size: " << maxFuncSize
                      << "\n");
    return 0;
  }

  if (maxFuncParams.getNumOccurrences() > 0 &&
      _depArgs.size() > maxFuncParams) {
    LLVM_DEBUG(dbgs() << "Slice with too many params: " << _depArgs.size()
                      << ", max number of params: " << maxFuncParams << "\n");
    return 0;
  }

  // Build alias sets for memory instructions in the function.
  for (BasicBlock &BB : *_parentFunction) {
    for (Instruction &I : BB) {
      if (StoreInst *SI = dyn_cast<StoreInst>(&I)) {
        AST.add(SI);
      } else if (CallBase *CB = dyn_cast<CallBase>(&I)) {
        AST.add(CB);
      } else if (LoadInst *LI = dyn_cast<LoadInst>(&I)) {
        AST.add(LI);
      } else if (AnyMemSetInst *MSI = dyn_cast<AnyMemSetInst>(&I)) {
        AST.add(MSI);
      } else if (AnyMemTransferInst *MTI = dyn_cast<AnyMemTransferInst>(&I)) {
        AST.add(MTI);
      }
    }
  }

  // LLVM does not provide alias/memory dependence information for allocas.
  // Thus, we track allocas that belong in the slice explicitly, so we can then
  // check if their memory is clobbered (changed) at any point in the slice
  // itself or at some other point in the parent function.
  SmallPtrSet<const Value *, 32> allocasInSlice;
  for (const Instruction *I : _instsInSlice) {
    if (const AllocaInst *AI = dyn_cast<AllocaInst>(I)) {
      allocasInSlice.insert(AI);
    }
  }
  for (BasicBlock &BB : *_parentFunction) {
    for (Instruction &I : BB) {
      if (StoreInst *SI = dyn_cast<StoreInst>(&I)) {
        Value *underlying = getUnderlyingObject(SI->getPointerOperand());
        if (allocasInSlice.contains(underlying)) {
          LLVM_DEBUG(dbgs()
                         << "Cannot outline slice because alloca is clobbered: "
                         << *underlying << "\n";);
          return 0;
        }
      } else if (LoadInst *LI = dyn_cast<LoadInst>(&I)) {
        if (AST.getAliasSetFor(MemoryLocation::get(LI)).isMod()) {
          Value *underlying = getUnderlyingObject(LI->getPointerOperand());
          if (allocasInSlice.contains(underlying)) {
            LLVM_DEBUG(dbgs()
                       << "Cannot outline slice because alloca is clobbered:"
                       << *underlying << "\n");
            return 0;
          }
        }
      }
    }
  }

  for (const Instruction *I : _instsInSlice) {
    if (const CallBase *CB = dyn_cast<CallBase>(I)) {
      if (CB->getCalledFunction() &&
          CB->getCalledFunction()->getName().startswith("_daedalus_slice_")) {
        // Ignore slice calls so we can outline slices of slices.
        continue;
      }
      if (!CB->getCalledFunction()) {
        LLVM_DEBUG(
            dbgs() << "Cannot outline slice because instruction calls unknown"
                      "function: "
                   << *CB << "\n");
        return 0;
      }
      LibFunc builtin;
      if (CB->getCalledFunction()->isDeclaration() &&
          !TLI.getLibFunc(*CB, builtin)) {
        LLVM_DEBUG(dbgs() << "Cannot outline slice because instruction calls "
                             "non-builtin function with no body: "
                          << *CB << "\n");
        return 0;
      }
    }

    // For instructions that may write to memory, we need some special
    // care to avoid load/store reordering and/or side effects.
    if (I->mayWriteToMemory()) {
      if (const LoadInst *LI = dyn_cast<LoadInst>(I)) {
        // For loads, we invalidate outlining if its address can be modified.
        // This is possible if the memory location pointed to by the load is
        // written/modified by any possibly aliasing pointer or clobbering
        // function call.
        if (AST.getAliasSetFor(MemoryLocation::get(LI)).isMod()) {
          LLVM_DEBUG(
              dbgs()
              << "Cannot outline slice because load address can be modified: "
              << *LI << "\n");
          return 0;
        }
      } else if (const CallBase *CB = dyn_cast<CallBase>(I)) {
        // For function calls, if the call has any side effects (as in, is not
        // read-only), we can't outline the slice.
        if (!AA->onlyReadsMemory(CB->getCalledFunction())) {
          LLVM_DEBUG(dbgs()
                     << "Cannot outline because call may write to memory: "
                     << *CB << "\n");
          return 0;
        }
      }
    } else if (!I->willReturn()) {
      LLVM_DEBUG(dbgs() << "Cannot outline because inst may not return: " << *I
                        << "\n");
      return 0;
    }
  }

  return 1;
}

/**
 * @brief Creates an unreachable block in the given function.
 *
 * This function creates a new basic block that contains an unreachable
 * instruction, which can be used as a target for branches that do not have a
 * valid successor in the program slice.
 *
 * @param F The function in which to create the unreachable block.
 * @return A pointer to the newly created unreachable block.
 */
BasicBlock *ProgramSlice::createUnreachableBlock(Function *F) {
  BasicBlock *unreachableBlock =
      BasicBlock::Create(F->getContext(), "_daedalus_unreachable", F);
  new UnreachableInst(F->getContext(), unreachableBlock);
  return unreachableBlock;
}

void ProgramSlice::rerouteBranches(Function *F, const PostDominatorTree &PDT) {
  DominatorTree DT(*_parentFunction);
  BasicBlock *unreachableBlock = createUnreachableBlock(F);

  for (BasicBlock &BB : *F) {
    // Skip the criterion's block if needed
    if (_newToOrigBBmap[&BB] == _initial->getParent()) continue;

    const BasicBlock *origBB = _newToOrigBBmap[&BB];
    Instruction *terminator = BB.getTerminator();

    if (!terminator) {
      LLVM_DEBUG(dbgs() << "Block with no terminator: " << BB.getName()
                        << "\n");
      // If block has no terminator, reconstruct based on original
      reconstructTerminator(BB, origBB, F, DT, unreachableBlock, PDT);
    } else {
      LLVM_DEBUG(dbgs() << "Block with terminator: " << BB.getName() << "\n");
      // If block has a terminator, ensure all its successors are valid
      rerouteTerminatorSuccessors(terminator, BB, origBB, F, DT,
                                  unreachableBlock, PDT);
    }
  }

  cleanupUnreachableBlock(unreachableBlock);
  updatePHINodes(F);
  logPredecessors(F);
}

void ProgramSlice::reconstructTerminator(BasicBlock &BB,
                                         const BasicBlock *origBB, Function *F,
                                         const DominatorTree &DT,
                                         BasicBlock *unreachableBlock,
                                         const PostDominatorTree &PDT) {
  const Instruction *origTerm = origBB->getTerminator();
  if (auto *origBranch = dyn_cast<BranchInst>(origTerm)) {
    SmallVector<BasicBlock *, 2> targets;
    for (const BasicBlock *succ : origBranch->successors()) {
      LLVM_DEBUG(dbgs() << "\tAnalyzing successor: " << succ->getName()
                        << "\n");
      if (BasicBlock *target = getOrCreateTargetBlock(succ, origBB, DT, PDT)) {
        targets.push_back(target);
      }
    }
    if (targets.empty()) {
      BranchInst::Create(unreachableBlock, &BB);
    } else if (targets.size() == 1) {
      BranchInst::Create(targets[0], &BB);
      updatePHINodesForSuccessor(targets[0], origBB, &BB);
    } else {
      Value *cond = getClonedCond(origBranch->getCondition());
      BranchInst::Create(targets[0], targets[1], cond, &BB);
      updatePHINodesForSuccessor(targets[0], origBB, &BB);
      updatePHINodesForSuccessor(targets[1], origBB, &BB);
    }
  } else if (auto *origSwitch = dyn_cast<SwitchInst>(origTerm)) {
    Value *cond = getClonedCond(origSwitch->getCondition());
    SwitchInst *newSwitch = SwitchInst::Create(cond, unreachableBlock,
                                               origSwitch->getNumCases(), &BB);
    for (auto &Case : origSwitch->cases()) {
      BasicBlock *target =
          getOrCreateTargetBlock(Case.getCaseSuccessor(), origBB, DT, PDT);
      newSwitch->addCase(const_cast<ConstantInt *>(Case.getCaseValue()),
                         target ? target : unreachableBlock);
    }
    BasicBlock *def =
        getOrCreateTargetBlock(origSwitch->getDefaultDest(), origBB, DT, PDT);
    newSwitch->setDefaultDest(def ? def : unreachableBlock);
  }
}

void ProgramSlice::rerouteTerminatorSuccessors(
    Instruction *terminator, BasicBlock &BB, const BasicBlock *origBB,
    Function *F, const DominatorTree &DT, BasicBlock *unreachableBlock,
    const PostDominatorTree &PDT) {
  if (auto *br = dyn_cast<BranchInst>(terminator)) {
    for (unsigned idx = 0; idx < br->getNumSuccessors(); ++idx) {
      BasicBlock *succ = br->getSuccessor(idx);
      LLVM_DEBUG(dbgs() << "\tAnalyzing successor: " << succ->getName()
                        << "\n");
      if (succ->getParent() == F) continue;
      BasicBlock *target = getOrCreateTargetBlock(succ, origBB, DT, PDT);
      if (!target) target = unreachableBlock;
      br->setSuccessor(idx, target);
      updatePHINodesForSuccessor(target, origBB, &BB);
    }
  } else if (auto *sw = dyn_cast<SwitchInst>(terminator)) {
    for (unsigned idx = 0; idx < sw->getNumSuccessors(); ++idx) {
      BasicBlock *succ = sw->getSuccessor(idx);
      LLVM_DEBUG(dbgs() << "\tAnalyzing successor: " << succ->getName()
                        << "\n");
      if (succ->getParent() == F) continue;
      BasicBlock *target = getOrCreateTargetBlock(succ, origBB, DT, PDT);
      if (!target) target = unreachableBlock;
      sw->setSuccessor(idx, target);
      updatePHINodesForSuccessor(target, origBB, &BB);
    }
  }
}

Value *ProgramSlice::getClonedCond(Value *origCond) {
  if (auto *inst = dyn_cast<Instruction>(origCond)) {
    auto it = _origToNewInst.find(inst);
    if (it != _origToNewInst.end()) return it->second;
  }
  if (auto *arg = dyn_cast<Argument>(origCond)) {
    auto it = std::find(_depArgs.begin(), _depArgs.end(), arg);
    if (it != _depArgs.end()) return *it;
  }
  return UndefValue::get(origCond->getType());
}

/**
 * Retrieves or creates a target basic block for control flow redirection.
 *
 * Given a successor and the original basic block, this function attempts to
 * find a suitable target block within the program slice. It first tries to
 * obtain a new target using an attractor-based method. If that fails (i.e., the
 * new target is not part of the slice), it falls back to finding a block
 * dominated by the original basic block using the provided dominator tree.
 *
 * @param successor   The successor basic block for which a new target is
 * sought.
 * @param originalBB  The original basic block from which control is redirected.
 * @param DT          The dominator tree used for dominance queries.
 * @return            A pointer to the new or existing target basic block, or
 * nullptr if none found.
 */
BasicBlock *ProgramSlice::getOrCreateTargetBlock(const BasicBlock *successor,
                                                 const BasicBlock *originalBB,
                                                 const DominatorTree &DT,
                                                 const PostDominatorTree &PDT) {
  BasicBlock *newTarget =
      getNewTargetByFirstDominator(successor, originalBB, DT, PDT);
  return newTarget;
}

/**
 * @brief Checks if the first dominator of `curBB` in the slice is `originalBB`.
 *
 * This helper function determines whether the immediate dominator of a basic
 * block (`curBB`) within the program slice matches a specified original basic
 * block (`originalBB`). This is useful for identifying control flow redirection
 * opportunities.
 *
 * @param curBB The current basic block whose first dominator is to be checked.
 * @param originalBB The original basic block to compare against.
 * @return true if the first dominator of `curBB` is `originalBB`, false
 * otherwise.
 */
bool ProgramSlice::isFirstDominatorInSlice(const BasicBlock *curBB,
                                           const BasicBlock *originalBB,
                                           const DominatorTree &DT) const {
  if (_firstDominators.count(curBB)) {
    const auto curBBDominators = _firstDominators.at(curBB);
    auto currFirstDominator = curBBDominators.front();
    assert(currFirstDominator != nullptr &&
           "Current first dominator should not be null");
    if (currFirstDominator == originalBB) {
      return true;
    }

    // Fixes test4.c and deals with ladder graphs
    if (DT.dominates(currFirstDominator, originalBB) &&
        !DT.dominates(curBB, originalBB)) {
      return true;
    }
  }
  return false;
}

/**
 * Finds a new target basic block in the sliced program by traversing the
 * dominance tree.
 *
 * Given a successor basic block and the original source block, this function
 * searches for a dominated block whose first dominator is the source block. If
 * the successor is already in the slice, it returns the corresponding new
 * basic block. Otherwise, it traverses the dominance tree starting from the
 * successor, looking for a block that satisfies the first-dominator condition.
 * The result is mapped to the new basic block in the sliced program.
 *
 * @param successor The successor basic block to start the search from.
 * @param originalBB The original source basic block to check as the first
 * dominator.
 * @param DT The dominator tree used for dominance queries.
 * @return The new target basic block in the sliced program, or nullptr if not
 * found.
 */
BasicBlock *ProgramSlice::getNewTargetByFirstDominator(
    const BasicBlock *successor, const BasicBlock *originalBB,
    const DominatorTree &DT, const PostDominatorTree &PDT) {
  BasicBlock *newTarget = nullptr;
  // If the block is in the slice, it is its own attractor.
  if (_BBsInSlice.count(successor)) {
    newTarget = const_cast<BasicBlock *>(successor);
    newTarget = _origToNewBBmap[newTarget];
    return newTarget;
  }

  // Traverse the CFG starting from the successor, looking for a block whose
  // first dominator in the slice is originalBB
  std::set<const BasicBlock *> visited;
  std::stack<const BasicBlock *> cfgStack;
  cfgStack.push(successor);
  const BasicBlock *found = nullptr;
  while (!cfgStack.empty()) {
    const BasicBlock *curBB = cfgStack.top();
    cfgStack.pop();
    if (!visited.insert(curBB).second) continue;
    if (curBB == originalBB) continue; // skip the source block itself

    // Skip traversing from loop header or blocks outside the current loop
    if (_loop && !_loop->isInvalid()) {
      if (_loop->contains(curBB)) {
        if (_loop->getHeader() == curBB) {
          LLVM_DEBUG(dbgs() << "\t\tCFG block is a loop header: "
                            << curBB->getName() << "\n");
          continue;
        }
      } else {
        LLVM_DEBUG(dbgs() << "\t\tCFG block is not in loop: "
                          << curBB->getName() << "\n");
        continue;
      }
    }

    LLVM_DEBUG(dbgs() << "\t\tVisiting CFG block: " << curBB->getName()
                      << "\n");

    if (isFirstDominatorInSlice(curBB, originalBB, DT)) {
      found = curBB;
      break;
    }

    // Traverse successors in the CFG
    for (const BasicBlock *succ : successors(curBB)) {
      cfgStack.push(succ);
    }
  }
  if (found) {
    LLVM_DEBUG(dbgs() << "\t\t\tFound block: " << found->getName() << "\n");
    newTarget = const_cast<BasicBlock *>(found);
    newTarget = _origToNewBBmap[newTarget];
  }
  return newTarget;
}

void ProgramSlice::updatePHINodesForSuccessor(
    BasicBlock *newSuccessor, const BasicBlock *originalIncomingBlock,
    BasicBlock *currentBB) {
  for (Instruction &I : *newSuccessor) {
    if (!isa<PHINode>(I)) {
      continue;
    }
    PHINode *phi = cast<PHINode>(&I);
    phi->replaceIncomingBlockWith(originalIncomingBlock, currentBB);
  }
}

/**
 * @brief Cleans up unreachable blocks by erasing them from the parent
 * function if they have no predecessors.
 *
 * This function checks if the specified unreachable block has no
 * predecessors. If it does not, it removes the block from its parent
 * function to clean up the control flow graph.
 *
 * @param unreachableBlock The unreachable block to be cleaned up.
 */
void ProgramSlice::cleanupUnreachableBlock(BasicBlock *unreachableBlock) {
  if (unreachableBlock->hasNPredecessors(0)) {
    unreachableBlock->eraseFromParent();
  }
}

/**
 * @brief Logs the predecessors of the new function's basic blocks.
 *
 * This function iterates through all basic blocks in the new function and
 * logs their predecessors to the debug output.
 *
 * @param F The function whose basic blocks' predecessors are to be logged.
 */
void ProgramSlice::logPredecessors(Function *F) {
  LLVM_DEBUG({
    dbgs() << "\nPredecessors of new function:\n";
    for (const BasicBlock &BB : *F) {
      dbgs() << "\tBlock: " << BB.getName() << " -> Predecessors: ";
      for (const BasicBlock *pred : predecessors(&BB)) {
        dbgs() << pred->getName() << " ";
      }
      dbgs() << "\n";
    }
    dbgs() << "\n";
  });
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
  for (const auto &arg : _depArgs) {
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
  const auto originalName = originalBB->getName();
  const std::string newBBName = "sliceclone_" + originalName.str();
  BasicBlock *newBB =
      BasicBlock::Create(F->getParent()->getContext(), newBBName, F);

  if (_origToNewBBmap.count(originalBB)) {
    _origToNewBBmap.erase(originalBB);
  }

  if (_newToOrigBBmap.count(newBB)) {
    _newToOrigBBmap.erase(newBB);
  }

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
      if (_instsInSlice.count(&origInst) && _origToNewBBmap.count(&BB)) {
        Instruction *newInst = origInst.clone();
        newInst->setName(origInst.getName());
        _origToNewInst.insert(std::make_pair(&origInst, newInst));
        _newToOrigInst.insert(std::make_pair(newInst, &origInst));
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

  for (auto &[originalInst, newInst] : _origToNewInst) {
    if (auto *PN = dyn_cast<PHINode>(newInst)) {
      for (const BasicBlock *BB : PN->blocks()) {
        if (_origToNewBBmap.count(BB)) {
          PN->replaceIncomingBlockWith(BB, _origToNewBBmap[BB]);
        }
      }
    }

    originalInst->replaceUsesWithIf(newInst, [F](const Use &U) {
      auto *UserI = dyn_cast<Instruction>(U.getUser());
      return UserI && UserI->getParent()->getParent() == F;
    });
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
      break;
    }
  }
  if (realEntry != nullptr) realEntry->moveBefore(&F->getEntryBlock());
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
 * @param dt A DenseMap mapping original values to their corresponding inside
 * the new function
 */
void ProgramSlice::replaceArgs(Function *F, DenseMap<Value *, uint> dt) {

  for (Instruction &I : instructions(F)) {
    for (int j = 0; j < I.getNumOperands(); ++j) {
      for (int k = 0; k < F->arg_size(); ++k) {
        if (auto operand = I.getOperand(j); dt.count(operand)) {
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
 * basic block and applying the simplifyCFG function. The process
 * stops when no more changes are made, or up to a maximum of 1000
 * iterations, whichever comes first.
 *
 * @param F Pointer to the Function to be simplified.
 * @param AM Reference to the FunctionAnalysisManager used to retrieve
 * TargetIRAnalysis result.
 */
void ProgramSlice::simplifyCfg(Function *F, FunctionAnalysisManager &AM) {
  const auto &TTI = AM.getResult<TargetIRAnalysis>(*F);
  bool changed = false;
  bool localChange = true;

  unsigned iterationsCounter = 0;
  while (localChange) {
    assert(iterationsCounter++ < 1000 &&
           "Iterative simplification didn't converge!");
    localChange = false;
    for (auto BBIt = F->begin(); BBIt != F->end();) {
      BasicBlock &BB = *BBIt++;
      if (simplifyCFG(&BB, TTI)) {
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
 * @brief Adds a return instruction to the function F based on the initial
 * instruction.
 *
 * @details This function creates a return instruction in the exit block of
 * the function F. If the initial instruction is a ReturnInst, it uses its
 * return value; otherwise, it uses the original instruction's value or
 * returns void if applicable.
 *
 * @param F The function where the return instruction will be added.
 * @return A pointer to the newly created ReturnInst.
 */
ReturnInst *ProgramSlice::addReturnValue(Function *F) {
  BasicBlock *exit = _origToNewInst[_initial]->getParent();

  if (exit->getTerminator()) {
    // The current terminator is an unconditional branch to a basic block with
    // invalid PHINode incoming values. They get removed from the current
    // slice because they are not in the slice.
    if (const auto *branchInst = dyn_cast<BranchInst>(exit->getTerminator())) {
      if (!branchInst->isConditional()) {
        for (auto *succ : successors(exit)) {
          for (Instruction &inst : *succ) {
            if (auto *phiNode = dyn_cast<PHINode>(&inst)) {
              phiNode->removeIncomingValue(exit, false);
            }
          }
        }
      }
    }
    exit->getTerminator()->eraseFromParent();
  }
  if (isa<ReturnInst>(_initial)) {
    if (Value *retType = dyn_cast<ReturnInst>(_initial)->getReturnValue()) {
      return ReturnInst::Create(F->getParent()->getContext(), retType, exit);
    }
  }
  if (const auto *callInst = dyn_cast<CallInst>(_initial)) {
    if (const Function *functionType = callInst->getCalledFunction()) {
      if (functionType->getReturnType()->isVoidTy())
        return ReturnInst::Create(F->getParent()->getContext(), nullptr, exit);
    }
  }
  return ReturnInst::Create(F->getParent()->getContext(),
                            _origToNewInst[_initial], exit);
}

/**
 * @brief Inserts a new entry block in function F if its current entry block
 * has predecessors.
 *
 * This function checks if the current entry block of F has any predecessors.
 * If so, it creates a new basic block at the beginning of F, moves it before
 * the current entry block, and sets it as the new entry. The new entry block
 * unconditionally branches to the original entry block.
 *
 * @param F The function in which to insert the new entry block.
 */
void ProgramSlice::createNewEntryBlock(Function *F) {
  BasicBlock &entry = F->getEntryBlock();
  // If the entry block has predecessors, insert a new entry block
  if (entry.hasNPredecessorsOrMore(1)) {
    // Create a new basic block
    BasicBlock *newEntry =
        BasicBlock::Create(F->getContext(), "_daedalus_new_entry", F);
    // Move the new entry block before the current entry block
    newEntry->moveBefore(&entry);
    // Add an unconditional branch to the original entry block
    BranchInst::Create(&entry, newEntry);
    for (Instruction &I : entry) {
      if (auto *PN = dyn_cast<PHINode>(&I)) {
        // Add a new incoming value with undef from newEntry
        PN->addIncoming(UndefValue::get(PN->getType()), newEntry);
      }
    }
  }
}

/**
 * @brief Outlines the program slice into a new function.
 *
 * @details This function creates a new function that contains the
 * instructions and basic blocks from the program slice. It sets up the
 * function's return type, arguments, and attributes, and populates it with
 * the necessary basic blocks and instructions.
 *
 * @return A pointer to the newly created Function representing the outlined
 * program slice, or nullptr if outlining is not possible.
 */
Function *ProgramSlice::outline() {
  PostDominatorTree PDT(*_parentFunction);
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
  const uint64_t random_num = dist(mt);
  const std::string functionName =
      "_daedalus_slice_" + _parentFunction->getName().str() + "_" +
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
  rerouteBranches(F, PDT);
  addReturnValue(F);
  reorderBlocks(F);
  replaceArgs(F, dt);
  createNewEntryBlock(F);

  LLVM_DEBUG(dbgs() << "Outlined function:\n" << *F << "\n");

  const std::string errorMsg(
      "Original function name: " + _parentFunction->getName().str() + "\n");

  // int numEntryBlocks = 0;
  // for (BasicBlock &BB : *F)
  //   if (BB.hasNPredecessors(0)) ++numEntryBlocks;
  // if (numEntryBlocks != 1) {
  //   errs() << errorMsg;
  // }
  // assert(numEntryBlocks == 1 &&
  //        "The only block with no predecessors must be the entry block.");

  if (verifyFunction(*F, &errs())) {
    errs() << errorMsg;
    assert(false && "Function verification failed.");
  }

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
  return _origToNewInst;
}

/**
 * @brief Retrieves the parent function of the program slice.
 *
 * @details This function returns a pointer to the parent function
 * associated with the program slice. The parent function is the original
 * function from which the slice was derived.
 *
 * @return A pointer to the parent Function of the program slice.
 */
Function *ProgramSlice::getParentFunction() const { return _parentFunction; }
