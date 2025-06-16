/**
 *  @file   ProgramSlice.cpp
 *  @brief  Daedalus' Program Slicer Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "ProgramSlice.h"

#include <map>
#include <queue>
#include <set>
#include <stack>
#include <tuple>
#include <utility>

#include "llvm/ADT/STLExtras.h"
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

#include <random>
#include <valarray>

#define DEBUG_TYPE "ProgramSlice"

using namespace llvm;

struct DataDependencies {
  std::set<const BasicBlock *> basicBlocks;
  std::set<const Value *> instructions;
  std::set<const Value *> functionArguments;
};

struct PhiDependencies {
  std::map<const PHINode *, SmallPtrSet<const Value *, 16>> phiNodeDeps;
  std::map<const PHINode *, SmallPtrSet<const Value *, 16>> phiNodeFuncArgs;
};

struct Status {
  bool status;
  std::string msg;
};

static bool isOperandOutsideLoopOrHeader(const Value *operand, const Loop *loop,
                                         const BasicBlock *loopHeader,
                                         std::set<const Value *> &functionArgs,
                                         std::set<const Value *> &visited) {
  if (!loop || loop->isInvalid()) return false;
  if (auto *phi = dyn_cast<PHINode>(operand)) {
    if (phi->getParent() == loopHeader) {
      LLVM_DEBUG(
          dbgs()
          << "\t\t\t\t--> Operand is a PHINode inside a loop header...\n");
      functionArgs.insert(operand);
      visited.insert(operand);
      return true;
    }
    if (!loop->contains(phi->getParent())) {
      LLVM_DEBUG(
          dbgs() << "\t\t\t\t--> Operand is a PHINode outside the current "
                    "criterion's loop...\n");
      functionArgs.insert(operand);
      visited.insert(operand);
      return true;
    }
  } else if (auto *inst = dyn_cast<Instruction>(operand)) {
    if (!loop->contains(inst->getParent())) {
      LLVM_DEBUG(dbgs() << "\t\t\t\t--> Operand is outside the current "
                           "criterion's loop...\n");
      functionArgs.insert(operand);
      visited.insert(operand);
      return true;
    }
  }
  return false;
}

static void activateTransitiveGates(
    const BasicBlock *BB, const PHINode &currentPhi,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates) {
  std::set<const BasicBlock *> visitedBBs;
  std::stack<const BasicBlock *> stack;
  const BasicBlock *currentPhiBB = currentPhi.getParent();
  stack.push(BB);

  while (!stack.empty()) {
    const BasicBlock *curBB = stack.top();
    stack.pop();
    if (visitedBBs.count(curBB)) continue;
    visitedBBs.insert(curBB);
    if (curBB == currentPhi.getParent()) continue;
    if (auto it = gates.find(curBB); it != gates.end()) {
      LLVM_DEBUG(dbgs() << "\t\t\t\tTrying to activate gates from block "
                        << curBB->getName() << " into gates of block "
                        << currentPhi.getParent()->getName() << "\n");

      for (const Value *gate : it->second) {
        if (const auto *gateInst = dyn_cast<Instruction>(gate)) {
          if (gates[currentPhiBB].end() ==
              std::find(gates[currentPhiBB].begin(), gates[currentPhiBB].end(),
                        gate)) {
            gates[currentPhiBB].push_back(gate);
            LLVM_DEBUG(dbgs() << "\t\t\t\t\tActivated gate: " << *gate << "\n");
          }
          stack.push(gateInst->getParent());
        }
      }
    }
  }
}

/**
 * @brief Retrieves the gate instruction (conditional branch or switch) for a
 * given basic block.
 *
 * This function examines the terminator instruction of the specified basic
 * block @p BB. If the terminator is a conditional branch or a switch
 * instruction, it returns a pointer to that instruction, which serves as the
 * "gate" controlling the block's outgoing control flow. If the terminator is an
 * unconditional branch or not a branch/switch, the function returns nullptr.
 *
 * @param BB Pointer to the basic block whose gate instruction is to be
 * retrieved.
 * @return const Value* Pointer to the gate instruction (conditional branch or
 * switch), or nullptr if none.
 */
static const Value *getGate(const BasicBlock *BB) {
  const Value *branchInst = nullptr;
  if (BB) {
    const Instruction *terminator = BB->getTerminator();
    if (const auto *BI = dyn_cast<BranchInst>(terminator)) {
      if (!BI->isConditional()) {
        LLVM_DEBUG(
            dbgs() << " Unconditional terminator found when trying to get "
                      "gate instruction...\n");
      } else {
        branchInst = BI;
      }
    } else if (const auto *SI = dyn_cast<SwitchInst>(terminator)) {
      branchInst = SI;
    }
  }
  return branchInst;
}

static bool isWeirdCFG(
    const PHINode &phi,
    const std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
        &gates,
    const DominatorTree &DT, const PostDominatorTree &PDT) {
  SmallPtrSet<BasicBlock *, 2> phiNodePreds;
  for (unsigned i = 0, e = phi.getNumIncomingValues(); i != e; ++i) {
    BasicBlock *incomingBlock = phi.getIncomingBlock(i);
    for (const BasicBlock *pred : predecessors(incomingBlock)) {
      if (incomingBlock->phis().empty() &&
          ((isa<BranchInst>(pred->getTerminator()) &&
            cast<BranchInst>(pred->getTerminator())->isConditional()) ||
           isa<SwitchInst>(pred->getTerminator())) &&
          !is_contained(gates.at(incomingBlock), pred->getTerminator()) &&
          !PDT.dominates(incomingBlock, pred) &&
          !DT.dominates(pred, incomingBlock)) {
        phiNodePreds.insert(incomingBlock);
      }
    }
  }
  return phiNodePreds.size() == 2;
}

static std::pair<Status, PhiDependencies> processPHINode(
    const PHINode &phiNode,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates,
    const DominatorTree &DT, const PostDominatorTree &PDT,
    const Loop *criterionLoop, const LoopInfo &criterionLoopInfo) {
  std::map<const PHINode *, SmallPtrSet<const Value *, 16>> phiNodeDeps;
  Status status = {true, ""};
  LLVM_DEBUG(dbgs() << "\t\t[Control Dependency] PHINode being processed: "
                    << phiNode << "\n");

  // ~special case~ don't outline slice if it contains the weird CFG pattern
  if (isWeirdCFG(phiNode, gates, DT, PDT)) {
    status = {false, ""};
    return {status, {}};
  }

  for (unsigned i = 0, e = phiNode.getNumIncomingValues(); i != e; ++i) {
    const BasicBlock *incomingBB = phiNode.getIncomingBlock(i);

    // Activate gates that dominates incoming blocks
    activateTransitiveGates(incomingBB, phiNode, gates);

    // ~special case~ if a PHINode's incoming block is an exit block of a
    // loop, then add its terminator to the gates of the PHINode's parent
    if (const Loop *loopForBB = criterionLoopInfo.getLoopFor(incomingBB);
        loopForBB && loopForBB->isLoopExiting(incomingBB)) {
      LLVM_DEBUG(dbgs() << "\t\t\t[Control Dependency] PHINode has an incoming "
                           "block that is an exiting edge of a loop and has a "
                           "back edge: "
                        << incomingBB->getName() << "\n");
      gates[phiNode.getParent()].push_back(incomingBB->getTerminator());
    }
  }

  // Push gates to phiNodeDeps
  if (const auto it = gates.find(phiNode.getParent()); it != gates.end()) {
    std::set<const Value *> visited;      // mocked visited set
    std::set<const Value *> functionArgs; // mocked function args set
    for (const Value *gate : it->second) {
      if (gate) {
        // ~special case~ don't consider gates that are outside the slice
        if (criterionLoop &&
            isOperandOutsideLoopOrHeader(gate, criterionLoop,
                                         criterionLoop->getHeader(),
                                         functionArgs, visited)) {
          LLVM_DEBUG(
              dbgs()
              << "\t\t\t[Control Dependency] Gate outside current slice: "
              << *gate << "\n");
          continue;
        }
        LLVM_DEBUG(dbgs() << "\t\t\t[Control Dependency] Processing gate: "
                          << *gate << "\n");
        phiNodeDeps[&phiNode].insert(gate);
      }
    }
  }
  return {status, {phiNodeDeps, {}}};
}
static std::pair<Status, PhiDependencies> getPhiDependencies(
    const PHINode &phiNode,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates,
    const Loop *criterionLoop, const LoopInfo &criterionLoopInfo,
    const DominatorTree &DT, const PostDominatorTree &PDT) {

  std::set<const Value *> functionArgs;
  std::map<const PHINode *, SmallPtrSet<const Value *, 16>> phiNodeFuncArgs;
  std::set<const Value *> deps;
  std::set<const Value *> visited;
  std::queue<const Value *> worklist;

  auto [status, phiDependencies] =
      processPHINode(phiNode, gates, DT, PDT, criterionLoop, criterionLoopInfo);
  if (!status.status) return {status, {}};

  worklist.push(&phiNode);
  for (auto dep : phiDependencies.phiNodeDeps[&phiNode]) worklist.push(dep);

  while (!worklist.empty()) {
    const Value *cur = worklist.front();
    worklist.pop();

    if (isa<Argument>(cur)) {
      functionArgs.insert(cur);
      continue;
    };

    deps.insert(cur);
    if (auto *dep = dyn_cast<Instruction>(cur)) {
      for (const Use &operand : dep->operands()) {
        if (!isa<Instruction>(operand) && !isa<Argument>(operand)) continue;
        if (visited.count(operand)) continue;
        LLVM_DEBUG(
            dbgs() << "\t\t\t[Control Dependency] Operand being processed: "
                   << *operand << "\n");
        if (criterionLoop &&
            isOperandOutsideLoopOrHeader(operand, criterionLoop,
                                         criterionLoop->getHeader(),
                                         functionArgs, visited)) {
          continue;
        }
        worklist.push(operand);
        visited.insert(operand);
      }
    }
  }
  phiDependencies.phiNodeDeps[&phiNode].insert(deps.begin(), deps.end());
  phiNodeFuncArgs[&phiNode].insert(functionArgs.begin(), functionArgs.end());
  return {status, {phiDependencies.phiNodeDeps, phiNodeFuncArgs}};
}

static std::pair<Status, DataDependencies>
getDataDependencies(const Instruction &I, const Loop *loop,
                    const BasicBlock *loopHeader) {
  Status status = {true, ""};
  std::set<const Value *> deps;
  std::set<const BasicBlock *> BBs;
  std::set<const Value *> visited;
  std::queue<const Value *> worklist;
  std::set<const Value *> functionArgs;

  visited.insert(&I);
  worklist.push(&I);

  // Helper to process operands
  auto processOperand = [&](const Value *operand) {
    // ~special case~ don't outline a slice if it depends on a global variable
    if (isa<GlobalVariable>(operand)) {
      status = {false, "Some dependency is on a Global Variable."};
      return false;
    }
    if (!isa<Instruction>(operand) && !isa<Argument>(operand)) return true;
    if (visited.count(operand)) return true;
    LLVM_DEBUG(dbgs() << "\t\t\t[Data Dependency] Operand being processed: "
                      << *operand << "\n");

    if (isOperandOutsideLoopOrHeader(operand, loop, loopHeader, functionArgs,
                                     visited)) {
      return true;
    }

    visited.insert(operand);
    worklist.push(operand);
    return true;
  };

  // Process worklist
  while (!worklist.empty()) {
    const Value *cur = worklist.front();
    worklist.pop();

    if (isa<Argument>(cur)) {
      functionArgs.insert(cur);
      continue;
    }

    deps.insert(cur);
    if (auto *dep = dyn_cast<Instruction>(cur)) {
      LLVM_DEBUG(dbgs() << "\t\t[Data Dependency] Instruction being processed: "
                        << *dep << "\n");
      const BasicBlock *currentDepBB = dep->getParent();
      BBs.insert(currentDepBB);
      for (const Use &U : dep->operands())
        if (!processOperand(U.get())) break;
    }
  }
  return {status, {BBs, deps, functionArgs}};
}

/**
 * @brief Finds the nearest dominator of a basic block that is not
 * post-dominated by it.
 *
 * Given a basic block \p BB, this function traverses up the dominator tree
 * (using \p DT) and returns the first dominator block that is not
 * post-dominated by \p BB (according to \p PDT). If all dominators are
 * post-dominated by \p BB, returns nullptr.
 *
 * @param BB The basic block for which to find the controller.
 * @param DT The dominator tree for the function.
 * @param PDT The post-dominator tree for the function.
 * @return The nearest controlling basic block, or nullptr if none is found.
 */
static const BasicBlock *getController(const BasicBlock *BB,
                                       const DominatorTree &DT,
                                       const PostDominatorTree &PDT) {
  const DomTreeNode *dom_node = DT.getNode(BB);
  while (dom_node) {
    const BasicBlock *dom_BB = dom_node->getBlock();
    if (!PDT.dominates(BB, dom_BB)) {
      return dom_BB;
    }
    dom_node = dom_node->getIDom();
  }
  return nullptr;
}

/**
 * @brief Computes the control dependency "gates" for each basic block in a
 * function.
 *
 * This function analyzes the control flow of the given function @p F and
 * determines, for each basic block, the set of instructions (gates) that
 * control entry into that block. Gates are typically conditional branch or
 * switch instructions in predecessor blocks that dominate the current block
 * but are not post-dominated by it. If a predecessor does not directly
 * dominate the block, the function finds the controlling block and its gate.
 *
 * The result is a mapping from each basic block to a vector of gate
 * instructions that represent the control dependencies for that block.
 *
 * @param F The function for which to compute gates.
 * @return A map from each basic block to a vector of gate instructions
 * (conditional branches or switches) that control entry into the block.
 */
static std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
computeGates(Function &F) {
  DominatorTree DT(F);
  PostDominatorTree PDT(F);
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates;
  for (const BasicBlock &BB : F) {
    SmallVector<const Value *> BB_gates;
    LLVM_DEBUG(dbgs() << BB.getName() << " predecessors:\n");
    for (const BasicBlock *pred : predecessors(&BB)) {
      LLVM_DEBUG(dbgs() << " - " << pred->getName() << " :");
      const Value *gate = getGate(pred);
      if (!gate) {
        LLVM_DEBUG(dbgs() << "\n\tNo gate\n");
        continue;
      }
      if (DT.dominates(pred, &BB) && !PDT.dominates(&BB, pred)) {
        LLVM_DEBUG(dbgs() << "\n\tInstruction: " << *gate << "\n");
        BB_gates.push_back(gate);
      } else {
        const BasicBlock *ctrl_BB = getController(pred, DT, PDT);
        if (const Value *ctrl_gate = getGate(ctrl_BB)) {
          LLVM_DEBUG(dbgs() << " Edge controlled by " << ctrl_BB->getName()
                            << " " << ctrl_gate->getName()
                            << "\n\tInstruction: " << *ctrl_gate << "\n");
          BB_gates.push_back(ctrl_gate);
        } else {
          LLVM_DEBUG(dbgs() << "\n\tInstruction: " << *gate << "\n");
        }
      }
      LLVM_DEBUG(dbgs() << "\n");
    }
    gates.emplace(&BB, BB_gates);
  }
  return gates;
}

static const BasicBlock *
findCommonDominator(const DominatorTree &DT,
                    const std::set<const BasicBlock *> &blocks) {
  if (blocks.empty()) return nullptr;
  auto it = blocks.begin();
  const BasicBlock *commonDom = *it++;
  for (; it != blocks.end(); ++it) {
    commonDom = DT.findNearestCommonDominator(commonDom, *it);
    if (!commonDom) break;
  }
  return commonDom;
}


ProgramSlice::ProgramSlice(Instruction &Initial, Function &F,
                           FunctionAnalysisManager &FAM,
                           std::set<BasicBlock *> &tryCatchBlocks)
    : _initial(&Initial), _parentFunction(&F) {

  assert(Initial.getParent()->getParent() == &F &&
         "Slicing instruction from different function!");

  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates =
      computeGates(F);

  LoopInfo &loopInfo = FAM.getResult<LoopAnalysis>(F);
  Loop *loop = loopInfo.getLoopFor(Initial.getParent());
  BasicBlock *loopHeader = (loop) ? loop->getHeader() : nullptr;

  // Get slice criterion's data dependencies
  dbgs() << "Listing data dependencies for slice criterion...\n";
  auto [check, data] = getDataDependencies(Initial, loop, loopHeader);
  LLVM_DEBUG({
    dbgs() << "Slice criterion: " << Initial << "\n\tDeps:\n";
    for (const Value *dep : data.instructions) {
      if (auto depI = dyn_cast<Instruction>(dep))
        dbgs() << "\t\tInstruction: " << *depI << "\n";
      if (auto depA = dyn_cast<Argument>(dep))
        dbgs() << "\t\tArgument: " << *depA << "\n";
    }
    for (const Value *dep : data.basicBlocks) {
      if (auto depBB = dyn_cast<BasicBlock>(dep))
        dbgs() << "\t\tBasic Block: " << depBB->getName() << "\n";
    }
    if (!data.functionArguments.empty()) {
      dbgs() << "\t\nFunc. Args.:\n";
      for (const Value *dep : data.functionArguments) {
        if (auto depI = dyn_cast<Instruction>(dep))
          dbgs() << "\t\tInstruction: " << *depI << "\n";
        if (auto depA = dyn_cast<Argument>(dep))
          dbgs() << "\t\tArgument: " << *depA << "\n";
      }
    }
    dbgs() << "\n";
  });

  // ~special case~ don't outline if the slice contains try-catch blocks
  for (auto &BB : data.basicBlocks) {
    if (tryCatchBlocks.count(const_cast<BasicBlock *>(BB))) {
      _canOutline.first = false;
      _canOutline.second = "Slice contains try-catch blocks.";
      break;
    }
  }
  if (!check.status) {
    _canOutline.first = check.status;
    _canOutline.second = check.msg;
    return;
  }

  // Get function's PHINodes data dependencies
  PhiDependencies phiDeps;
  SmallVector<const PHINode *, 12> invalidPHINodes;
  DominatorTree DT(F);
  PostDominatorTree PDT(F);
  dbgs() << "Listing control dependencies for listed PHINodes...\n";
  for (auto *inst : data.instructions) {
    if (auto *phi = dyn_cast<PHINode>(inst)) {
      auto [phiStatus, phiDependencies] =
          getPhiDependencies(*phi, gates, loop, loopInfo, DT, PDT);
      if (!phiStatus.status) {
        invalidPHINodes.push_back(phi);
      } else {
        phiDeps.phiNodeDeps.insert(phiDependencies.phiNodeDeps.begin(),
                                   phiDependencies.phiNodeDeps.end());
        phiDeps.phiNodeFuncArgs.insert(phiDependencies.phiNodeFuncArgs.begin(),
                                       phiDependencies.phiNodeFuncArgs.end());
      }
    }
  }
  // ~special case~ don't outline if the slice has the weird CFG pattern
  if (!invalidPHINodes.empty()) {
    _canOutline.first = false;
    _canOutline.second = "There's a PHINode whose incoming blocks don't have "
                         "PHINodes and one of its predecessors has a "
                         "conditional branch or switch, that don't control it";
    return;
  }

  const BasicBlock *commonDominator = findCommonDominator(DT, data.basicBlocks);
  if (!commonDominator) {
    _canOutline.first = false;
    _canOutline.second = "No common dominator found for the slice.";
    return;
  }
  LLVM_DEBUG(dbgs() << "Common dominator: " << commonDominator->getName()
                    << "\n");

  SmallPtrSet<const Value *, 16> missingDeps;
  SmallPtrSet<const BasicBlock *, 16> missingBlocks;
  SmallPtrSet<const Value *, 16> missingArgs;
  for (const auto &[fst, snd] : phiDeps.phiNodeDeps) {
    if (!snd.empty()) {
      LLVM_DEBUG(dbgs() << "PHINode: " << *fst << "\n\tDeps.:\n");
      for (const Value *dep : snd) {
        if (auto *instDep = dyn_cast<Instruction>(dep)) {
          if (!data.instructions.count(dep)) {
            if (!DT.dominates(commonDominator, instDep->getParent())) continue;
            if (missingDeps.count(dep)) continue;
            LLVM_DEBUG(dbgs()
                       << "\t\tMissing Instruction: " << *instDep << "\n");
            missingDeps.insert(instDep);
            const BasicBlock *instDepBB = instDep->getParent();
            if (missingBlocks.count(instDepBB)) continue;
            if (!data.basicBlocks.count(instDepBB)) {
              LLVM_DEBUG(dbgs() << "\t\tMissing Block: " << instDepBB->getName()
                                << "\n");
              missingBlocks.insert(instDepBB);
            }
          }
        }
      }
    }
    if (!phiDeps.phiNodeFuncArgs[fst].empty()) {
      LLVM_DEBUG(dbgs() << "\n\tFunc. Args.:\n");
      for (const Value *arg : phiDeps.phiNodeFuncArgs[fst]) {
        if (!data.functionArguments.count(arg)) {
          if (missingArgs.count(arg)) continue;
          LLVM_DEBUG(dbgs()
                     << "\t\tMissing Function Argument: " << *arg << "\n");
          missingArgs.insert(arg);
        }
      }
    }
  }
  // Updating data.instructions
  if (!missingDeps.empty())
    data.instructions.insert(missingDeps.begin(), missingDeps.end());
  // Updating data.functionArguments
  if (!missingArgs.empty())
    data.functionArguments.insert(missingArgs.begin(), missingArgs.end());
  // Updating data.basicBlocks
  if (!missingBlocks.empty())
    data.basicBlocks.insert(missingBlocks.begin(), missingBlocks.end());

  std::set<const Instruction *> instsInSlice;
  SmallVector<Value *> depArgs;

  for (auto val : data.instructions) {
    if (auto *A = dyn_cast<Argument>(const_cast<Value *>(val))) {
      LLVM_DEBUG(
          dbgs() << "\tValue from data.instructions being inserted in depArgs: "
                 << *val << "\n");
      depArgs.push_back(A);
    } else if (auto *I = dyn_cast<Instruction>(val)) {
      instsInSlice.insert(I);
    }
  }

  for (auto val : data.functionArguments) {
    LLVM_DEBUG(
        dbgs()
        << "\tValue from data.functionArguments being inserted in depArgs: "
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
  _BBsInSlice = data.basicBlocks;

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

  computeAttractorBlocks(loop);
  LLVM_DEBUG({
    dbgs() << "\n\tAttractors:\n";
    for (const BasicBlock &BB : *_parentFunction) {
      if (_attractors.count(&BB)) {
        StringRef attractorBlockName = _attractors[&BB]->getName();
        dbgs() << "\t\tBlock: " << BB.getName()
               << " -> Attractor: " << attractorBlockName << "\n";
      }
    }
    dbgs() << "\tPredecessors of original function:\n";
    for (const BasicBlock &BB : *_parentFunction) {
      dbgs() << "\t\tBlock: " << BB.getName() << " -> Predecessors: ";
      for (const BasicBlock *pred : predecessors(&BB)) {
        dbgs() << pred->getName() << " ";
      }
      dbgs() << "\n";
    }
    dbgs() << "\n";
  });
}

BasicBlock *ProgramSlice::findNextDominatedNode(const DominatorTree &DT,
                                                const BasicBlock *startNodeBB) {
  BasicBlock *newTarget = nullptr;
  std::stack<DomTreeNode *> stack;
  std::set<const BasicBlock *> visited;
  LLVM_DEBUG(dbgs() << "\tStart node: " << startNodeBB->getName() << "\n");
  if (DomTreeNode *domNode = DT.getNode(startNodeBB)) stack.push(domNode);
  while (!stack.empty()) {
    DomTreeNode *curNode = stack.top();
    stack.pop();
    BasicBlock *curBB = curNode->getBlock();
    BasicBlock *curBBNew = _origToNewBBmap[curBB];
    if (visited.count(curBB)) continue;
    visited.insert(curBB);
    LLVM_DEBUG(dbgs() << "\t\tVisiting: " << curBB->getName() << "\n");
    if (curBBNew && curBB != startNodeBB && _BBsInSlice.count(curBB)) {
      newTarget = curBBNew;
      LLVM_DEBUG(dbgs() << "\t\t\tNew target found: " << newTarget->getName()
                        << "\n");
      break;
    }
    for (DomTreeNode *child : *curNode) {
      stack.push(child);
    }
  }
  return newTarget;
}

/**
 * @brief Computes the attractor blocks for the program slice.
 *
 * This function calculates a mapping of basic blocks to their respective
 * attractor blocks within the program slice. An attractor block is defined
 * as the nearest post-dominator block in the slice for a given basic block.
 *
 * The function iterates over all basic blocks in the parent function and
 * determines their attractor blocks based on the post-dominator tree (PDT).
 * If a basic block is already part of the slice, it is its own attractor.
 * Otherwise, the function traverses the immediate dominators in the PDT
 * until it finds a block that belongs to the slice.
 *
 * @note The computed attractor blocks are stored in the `_attractors` member.
 *
 * @pre `_parentFunction` must be initialized and represent the function
 *      containing the basic blocks.
 * @pre `_BBsInSlice` must be populated with the set of basic blocks
 *      that are part of the slice.
 *
 * @post `_attractors` will contain a mapping of basic blocks to their
 *       attractor blocks.
 */
void ProgramSlice::computeAttractorBlocks(const Loop *loop) {
  std::map<const BasicBlock *, const BasicBlock *> attractors;
  LLVM_DEBUG(dbgs() << "Computing attractors...\n");
  PostDominatorTree PDT(*_parentFunction);
  for (const BasicBlock &BB : *_parentFunction) {
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
      // ~special case~ the slice criterion is inside a loop, hence
      // we should not set an attractor if it's a loop header
      if (loop && !loop->isInvalid()) {
        if (Cand->getBlock() != loop->getHeader()) {
          attractors[&BB] = Cand->getBlock();
        }
      } else {
        attractors[&BB] = Cand->getBlock();
      }
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
  // Stack for iterative traversal
  std::stack<std::pair<DomTreeNode *, DomTreeNode *>> stack;
  stack.emplace(cur, parent);

  while (!stack.empty()) {
    auto [current, parentNode] = stack.top();
    stack.pop();

    if (!parentNode || !current) continue;

    // Update parent if the current block is part of the slice
    if (_BBsInSlice.count(current->getBlock())) {
      parentNode = current;
    }

    // Iterate over child nodes
    for (DomTreeNode *child : *current) {
      // Skip already visited nodes
      if (!visited.insert(child).second) {
        continue;
      }

      // Push child and updated parent to the stack
      stack.emplace(child, parentNode);

      // If the child block is part of the slice and there is a valid parent
      if (parentNode && _BBsInSlice.count(child->getBlock())) {
        BasicBlock *parentBB = _origToNewBBmap[parent->getBlock()];
        BasicBlock *childBB = _origToNewBBmap[child->getBlock()];
        if (parentBB->getTerminator() == nullptr) {
          BranchInst::Create(childBB, parentBB);
        }
      }
    }
  }
}

void removeOldIncomingBlocks(Function *F) {
  for (BasicBlock &BB : *F) {
    std::set<BasicBlock *> preds(pred_begin(&BB), pred_end(&BB));
    for (auto I_it = BB.begin(); I_it != BB.end();) {
      auto *PN = dyn_cast<PHINode>(I_it);
      if (!PN) break;
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

  // Initialize dominance tree traversal and identify the initial parent
  // block.
  DomTreeNode *init = DT.getRootNode();
  visited.insert(init);
  if (_BBsInSlice.count(init->getBlock())) {
    parent = init;
  }

  // Add branches based on dominance relationships.
  addDomBranches(init, parent, visited);

  // Create a single unreachable block to simplify branch removal.
  BasicBlock *unreachableBlock = createUnreachableBlock(F);

  // Iterate over all basic blocks in the function to reroute branches.
  for (BasicBlock &BB : *F) {
    const BasicBlock *originalBB = _newToOrigBBmap[&BB];
    if (originalBB == _initial->getParent())
      continue; // skip slice criterion's basic block
    Instruction *terminator = BB.getTerminator();

    if (!terminator) {
      handleNoTerminatorBlock(BB, originalBB, F, DT);
    } else {
      handleTerminatorBlock(BB, originalBB, F, DT, unreachableBlock);
    }
  }

  // Clean up the unreachable block if it was not used.
  cleanupUnreachableBlock(unreachableBlock);

  // Update PHI nodes after all branch rerouting is complete.
  removeOldIncomingBlocks(F);

  // Debugging output for predecessors (optional).
  logPredecessors(F);
}

BasicBlock *ProgramSlice::createUnreachableBlock(Function *F) {
  BasicBlock *unreachableBlock =
      BasicBlock::Create(F->getContext(), "_daedalus_unreachable", F);
  new UnreachableInst(F->getContext(), unreachableBlock);
  return unreachableBlock;
}

void ProgramSlice::handleNoTerminatorBlock(BasicBlock &BB,
                                           const BasicBlock *originalBB,
                                           const Function *F,
                                           const DominatorTree &DT) {
  LLVM_DEBUG(dbgs() << "Parent BB without terminator: " << BB.getName()
                    << "\n");

  if (isa<BranchInst>(originalBB->getTerminator())) {
    handleNoTerminatorBranch(BB, originalBB, F, DT);
  } else if (isa<SwitchInst>(originalBB->getTerminator())) {
    handleNoTerminatorSwitch(BB, originalBB, DT);
  }
}

void ProgramSlice::handleNoTerminatorBranch(BasicBlock &BB,
                                            const BasicBlock *originalBB,
                                            const Function *F,
                                            const DominatorTree &DT) {
  const auto *origBranch = cast<BranchInst>(originalBB->getTerminator());

  for (const BasicBlock *successor : origBranch->successors()) {

    if (BasicBlock *newTarget =
            getOrCreateTargetBlock(successor, originalBB, DT)) {
      BranchInst::Create(newTarget, &BB);
      updatePHINodesForSuccessor(newTarget, originalBB, &BB, F, DT);
      break;
    }
  }
}

void ProgramSlice::handleNoTerminatorSwitch(BasicBlock &BB,
                                            const BasicBlock *originalBB,
                                            const DominatorTree &DT) {
  const auto *origSwitch = cast<SwitchInst>(originalBB->getTerminator());
  SmallVector<BasicBlock *, 4> validTargets;

  for (unsigned int idx = 0; idx < origSwitch->getNumSuccessors(); ++idx) {
    BasicBlock *successor = origSwitch->getSuccessor(idx);
    BasicBlock *newTarget = _origToNewBBmap[_attractors[successor]];
    if (newTarget && _BBsInSlice.count(successor)) {
      validTargets.push_back(newTarget);
    }
  }

  if (validTargets.size() == 1) {
    BranchInst::Create(validTargets.front(), &BB);
  } else if (validTargets.empty()) {
    // If no single valid target, find a dominated node.
    if (BasicBlock *newTarget =
            getOrCreateTargetBlock(nullptr, originalBB, DT)) {
      BranchInst::Create(newTarget, &BB);
    }
  }
}

void ProgramSlice::handleTerminatorBlock(BasicBlock &BB,
                                         const BasicBlock *originalBB,
                                         Function *F, const DominatorTree &DT,
                                         BasicBlock *unreachableBlock) {
  LLVM_DEBUG(dbgs() << "Parent BB WITH terminator: " << BB.getName() << "\n");

  if (auto *BI = dyn_cast<BranchInst>(BB.getTerminator())) {
    handleExistingBranchInst(BI, BB, originalBB, F, DT, unreachableBlock);
  } else if (auto *SI = dyn_cast<SwitchInst>(BB.getTerminator())) {
    handleExistingSwitchInst(SI, BB, originalBB, F, DT, unreachableBlock);
  }
}

void ProgramSlice::handleExistingBranchInst(
    BranchInst *BI, BasicBlock &currentBB, const BasicBlock *originalBB,
    Function *F, const DominatorTree &DT, BasicBlock *unreachableBlock) {
  for (unsigned int idx = 0; idx < BI->getNumSuccessors(); ++idx) {
    BasicBlock *successor = BI->getSuccessor(idx);
    // If the successor is within the current function, no rerouting is needed
    // for it.
    if (successor->getParent() == F) {
      continue;
    }

    if (BasicBlock *newSucc =
            getOrCreateTargetBlock(successor, originalBB, DT)) {
      BI->setSuccessor(idx, newSucc);
      updatePHINodesForSuccessor(newSucc, successor, &currentBB, F, DT);
    } else {
      // If no valid new successor, reroute to the unreachable block.
      replaceUsesAndSetSuccessor(successor, unreachableBlock, F, BI, idx);
    }
  }
}

void ProgramSlice::handleExistingSwitchInst(
    SwitchInst *SI, BasicBlock &currentBB, const BasicBlock *originalBB,
    Function *F, const DominatorTree &DT, BasicBlock *unreachableBlock) {
  for (unsigned int idx = 0; idx < SI->getNumSuccessors(); ++idx) {
    BasicBlock *successor = SI->getSuccessor(idx);
    // If the successor is within the current function, no rerouting is needed
    // for it.
    if (successor->getParent() == F) {
      continue;
    }

    if (BasicBlock *newSucc =
            getOrCreateTargetBlock(successor, originalBB, DT)) {
      SI->setSuccessor(idx, newSucc);
      updatePHINodesForSuccessor(newSucc, successor, &currentBB, F, DT);
    } else {
      // If no valid new successor, reroute to the unreachable block.
      replaceUsesAndSetSuccessor(successor, unreachableBlock, F, SI, idx);
    }
  }
}

BasicBlock *ProgramSlice::getOrCreateTargetBlock(const BasicBlock *successor,
                                                 const BasicBlock *originalBB,
                                                 const DominatorTree &DT) {
  BasicBlock *newTarget = nullptr;
  if (successor) {
    const BasicBlock *attractor = _attractors[successor];
    newTarget = _origToNewBBmap[attractor];
  }
  // ~special case~ if the new target is not in the slice, find a dominated
  // block.
  if (!newTarget) {
    newTarget = findNextDominatedNode(DT, originalBB);
    if (newTarget && is_contained(successors(originalBB),
                                        _newToOrigBBmap[newTarget])) {
      newTarget = nullptr;
    }
  }
  return newTarget;
}

void ProgramSlice::updatePHINodesForSuccessor(
    BasicBlock *newSuccessor, const BasicBlock *originalIncomingBlock,
    BasicBlock *currentBB, const Function *F, const DominatorTree &DT) {
  for (Instruction &I : *newSuccessor) {
    if (auto *phi = dyn_cast<PHINode>(&I)) {
      for (unsigned i = 0, e = phi->getNumIncomingValues(); i != e; ++i) {
        if (const BasicBlock *incomingBlock = phi->getIncomingBlock(i);
            originalIncomingBlock == incomingBlock) {
          phi->replaceIncomingBlockWith(originalIncomingBlock, currentBB);
        }
      }
    }
  }
}

void ProgramSlice::replaceUsesAndSetSuccessor(BasicBlock *successorToReplace,
                                              BasicBlock *unreachableBlock,
                                              Function *F,
                                              Instruction *terminator,
                                              unsigned int successorIndex) {
  successorToReplace->replaceUsesWithIf(unreachableBlock, [F](const Use &U) {
    auto *UserI = dyn_cast<Instruction>(U.getUser());
    return UserI && UserI->getParent()->getParent() == F;
  });
  terminator->setSuccessor(successorIndex, unreachableBlock);
}

void ProgramSlice::cleanupUnreachableBlock(BasicBlock *unreachableBlock) {
  if (unreachableBlock->hasNPredecessors(0)) {
    unreachableBlock->eraseFromParent();
  }
}

void ProgramSlice::logPredecessors(Function *F) {
  LLVM_DEBUG({
    dbgs() << "\tPredecessors of new function:\n";
    for (const BasicBlock &BB : *F) {
      dbgs() << "\t\tBlock: " << BB.getName() << " -> Predecessors: ";
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
  auto originalName = originalBB->getName();
  std::string newBBName = "sliceclone_" + originalName.str();
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
      if (_instsInSlice.count(&origInst)) {
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

  for (auto &pair : _origToNewInst) {
    Instruction *originalInst = pair.first;
    Instruction *newInst = pair.second;

    if (auto *PN = dyn_cast<PHINode>(newInst)) {
      for (BasicBlock *BB : PN->blocks()) {
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

void ProgramSlice::createNewEntryBlock(Function *F) {
  // Insert a new entry block if the current entry has predecessors
  BasicBlock *oldEntry = &F->getEntryBlock();
  if (pred_begin(oldEntry) != pred_end(oldEntry)) {
    LLVMContext &Ctx = F->getContext();
    BasicBlock *newEntry = BasicBlock::Create(Ctx, "BB_Entry", F, oldEntry);
    IRBuilder<> builder(newEntry);
    builder.CreateBr(oldEntry);
    // If oldEntry has PHINodes, add an incoming value from the new entry
    for (auto I = oldEntry->begin(); isa<PHINode>(I); ++I) {
      auto *newInst = dyn_cast<Instruction>(I);
      auto *origPhiNode = dyn_cast<PHINode>(_newToOrigInst[newInst]);
      LLVM_DEBUG(dbgs() << "Original PHINode: " << *origPhiNode << "\n");
      // Find a ConstantInt in the original PHINode's incoming values
      Constant *constantVal = nullptr;
      for (unsigned idx = 0; idx < origPhiNode->getNumIncomingValues(); ++idx) {
        if (auto *cv = dyn_cast<Constant>(origPhiNode->getIncomingValue(idx))) {
          if (cv->getType()->isIntegerTy() ||
              cv->getType()->isFloatingPointTy()) {
            constantVal = cv;
            break;
          }
        }
      }
      Value *incomingVal = nullptr;
      if (constantVal) {
        incomingVal = constantVal;
      } else {
        incomingVal = UndefValue::get(origPhiNode->getType());
      }
      auto *newPhiNode = dyn_cast<PHINode>(I);
      newPhiNode->addIncoming(incomingVal, newEntry);
      LLVM_DEBUG(dbgs() << "New PHINode: " << *newPhiNode << "\n");
    }
  }
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
  if (!_canOutline.first) {
    LLVM_DEBUG(dbgs() << _canOutline.second << '\n');
    return nullptr;
  }

  if (constexpr int size = 3; _instsInSlice.size() < size) {
    LLVM_DEBUG(
        dbgs()
        << "Insufficient number of instructions to outline a new slice...\n");
    LLVM_DEBUG(dbgs() << "The slice must have at least " << size
                      << " instructions to be outlined...\n");
    return nullptr;
  }

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
  rerouteBranches(F);
  addReturnValue(F);
  reorderBlocks(F);
  replaceArgs(F, dt);
  createNewEntryBlock(F);

  LLVM_DEBUG(dbgs() << "Outlined function:\n" << *F);

  int numEntryBlocks = 0;
  for (BasicBlock &BB : *F)
    if (BB.hasNPredecessors(0)) ++numEntryBlocks;
  assert(numEntryBlocks == 1 &&
         "The only block with no predecessors must be the entry block.");

  assert(!verifyFunction(*F, &errs()));

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
