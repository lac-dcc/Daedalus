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
      assert(BI->isConditional() &&
             "Unconditional terminator found when trying to get "
             "gate instruction...\n");
      branchInst = BI;
    } else if (const auto *SI = dyn_cast<SwitchInst>(terminator)) {
      branchInst = SI;
    }
  }
  return branchInst;
}

/**
 * @brief Computes only data dependencies for a given instruction within a
 * function.
 *
 * This function checks if the given PHINode has a weird control flow graph
 * (CFG) pattern, which is defined as having two incoming blocks that are
 * predecessors of the PHINode's parent block, and at least one of those
 * predecessors has a conditional branch or switch terminator that does not
 * control the PHINode's parent block.
 *
 * @param phi The PHINode to check.
 * @param gates A map of basic blocks to their controlling gate instructions.
 * @param DT The dominator tree for the function.
 * @param PDT The post-dominator tree for the function.
 * @return true if the PHINode has a weird CFG pattern, false otherwise.
 */
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

/**
 * @brief Retrieves data dependencies for a given instruction.
 *
 * This function analyzes the data dependencies of the specified instruction
 * within the context of its basic block, loop, and control flow graph. It
 * collects all operands, PHINodes, and gates that are relevant to the
 * instruction's execution and returns them along with their status.
 *
 * @param I The instruction for which to retrieve data dependencies.
 * @param gates A map of basic blocks to their controlling gate instructions.
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
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates,
    const LoopInfo &loopInfo, const Loop *loop, const BasicBlock *loopHeader,
    const DominatorTree &DT, const PostDominatorTree &PDT) {

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
    if (isa<GlobalVariable>(operand)) { // ~special case~
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

      if (isWeirdCFG(*phi, gates, DT, PDT)) { // ~special case~
        status = {false, "There's a PHINode whose incoming blocks don't have "
                         "PHINodes and one of its predecessors has a "
                         "conditional branch or switch, that don't control it"};
        return {status, {}};
      }

      for (const auto *incomingBB : phi->blocks()) {
        BBs.push_back(incomingBB);

        // ~special case~ if a PHINode's incoming block is an exit block of a
        // loop, then add its terminator to the gates of the PHINode's parent
        Loop *loopForBB = loopInfo.getLoopFor(incomingBB);
        if (loopForBB && loopForBB->isLoopExiting(incomingBB)) {
          LLVM_DEBUG(dbgs()
                     << "\t\t[Control Dependency] PHINode has an incoming "
                        "block that is an exit block of a loop and contains "
                        "a dependency: "
                     << incomingBB->getName() << "\n");
          gates[phi->getParent()].push_back(incomingBB->getTerminator());
        }
      }

      for (const Value *gate : gates[phi->getParent()]) {
        if (gate && !visited.count(gate)) {
          if (auto *gateInst = dyn_cast<Instruction>(gate)) {
            LLVM_DEBUG(dbgs()
                       << "\t\t\t[Control Dependency] Pushing gate (from "
                       << gateInst->getParent()->getName() << "): " << *gate
                       << "\n");

            // ~special case~ if the gate instruction is outside the current
            // slice criterion's loop, don't treat it as a dependency
            if (isOperandOutsideLoopOrHeader(gate, loop, loopHeader)) {
              continue;
            }

            worklist.push(gate);
            visited.insert(gate);
          }
        }
      }
    }
  }

  return {status, {BBs, deps, funcArgs}};
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
    if (const BasicBlock *dom_BB = dom_node->getBlock();
        !PDT.dominates(BB, dom_BB)) {
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
 * @param loop The loop in which the slice criterion resides, if applicable.
 * @return A map from each basic block to a vector of gate instructions
 * (conditional branches or switches) that control entry into the block.
 */
static std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
computeGates(Function &F, const Loop *loop) {
  const DominatorTree DT(F);
  const PostDominatorTree PDT(F);
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates;
  for (const BasicBlock &BB : F) {
    SmallVector<const Value *> BB_gates;
    // const unsigned num_preds = pred_size(&BB);
    // if (num_preds > 1) {
    LLVM_DEBUG(dbgs() << BB.getName() << " predecessors:\n");
    for (const BasicBlock *pred : predecessors(&BB)) {
      LLVM_DEBUG(dbgs() << " - " << pred->getName() << " :");

      if (loop && !loop->isInvalid()) {
        if (loop->contains(pred) && loop->isLoopLatch(pred) && pred != &BB) {
          LLVM_DEBUG(
              dbgs()
              << "Predecessor is a loop latch... skipping gate activation.\n");
          continue;
        }
      }

      if (DT.dominates(pred, &BB) && !PDT.dominates(&BB, pred)) {
        if (const Value *gate = getGate(pred)) {
          LLVM_DEBUG(dbgs() << "\n\tInstruction: " << *gate << "\n");
          BB_gates.push_back(gate);
        }
      } else {
        const BasicBlock *ctrl_BB = getController(pred, DT, PDT);
        if (const Value *ctrl_gate = getGate(ctrl_BB)) {
          LLVM_DEBUG(dbgs() << " Edge controlled by " << ctrl_BB->getName()
                            << " " << ctrl_gate->getName()
                            << "\n\tInstruction: " << *ctrl_gate << "\n");
          BB_gates.push_back(ctrl_gate);
        }
      }
      LLVM_DEBUG(dbgs() << "\n");

      // ~special case~ Activate predecessors' gates for the current block to
      // capture the transitive dependencies
      if (gates.count(pred) && !gates[pred].empty()) {
        LLVM_DEBUG(dbgs() << "\n\tPredecessor gates:\n");
        for (auto *predGate : gates[pred]) {
          if (BB_gates.end() ==
              std::find(BB_gates.begin(), BB_gates.end(), predGate)) {
            LLVM_DEBUG(dbgs() << "\n\t\tInstruction: " << *predGate << "\n");

            if (auto *predGateInst = dyn_cast<Instruction>(predGate)) {
              const BasicBlock *predGateParent = predGateInst->getParent();
              // A gate from a dominated block cannot be propagated to the
              // current block
              if (!DT.dominates(&BB, predGateParent))
                BB_gates.push_back(predGate);
            }
          }
        }
        LLVM_DEBUG(dbgs() << "\n");
      }
    }
    // }
    gates.emplace(&BB, BB_gates);
  }
  return gates;
}

/**
 * @brief Constructs a ProgramSlice object for a given instruction in a
 * function.
 *
 * This constructor initializes the ProgramSlice by computing the gates for
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
                           FunctionAnalysisManager &FAM)
    : _initial(&Initial), _parentFunction(&F) {

  assert(Initial.getParent()->getParent() == &F &&
         "Slicing instruction from different function!");

  LoopInfo &loopInfo = FAM.getResult<LoopAnalysis>(F);
  Loop *loop = loopInfo.getLoopFor(Initial.getParent());
  BasicBlock *loopHeader = (loop) ? loop->getHeader() : nullptr;

  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates =
      computeGates(F, loop);

  DominatorTree DT(F);
  PostDominatorTree PDT(F);
  auto [check, data] =
      getDataDependencies(Initial, gates, loopInfo, loop, loopHeader, DT, PDT);

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

/**
 * @brief Finds the next dominated node in the dominator tree that is part of
 * the program slice.
 *
 * This function traverses the dominator tree starting from the given
 * `startNodeBB` and returns the first basic block that is dominated by it and
 * is also part of the program slice. It uses a stack to perform a depth-first
 * search through the dominator tree.
 *
 * @param DT The dominator tree for the function.
 * @param startNodeBB The starting basic block from which to begin the search.
 * @return A pointer to the next dominated basic block in the slice, or nullptr
 * if no such block is found.
 */
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
    const BasicBlock *curBB = curNode->getBlock();
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
 * @brief Computes the attractor blocks for each basic block in the parent
 * function.
 *
 * This method determines, for each basic block in the parent function, the
 * "attractor" block, which is the nearest post-dominating block that is part of
 * the current program slice. The attractor mapping is stored in the
 * `_attractors` member variable.
 *
 * If a loop is provided and is valid, only basic blocks that are part of the
 * slice are considered. For each basic block:
 *   - If the block is in the slice, it is its own attractor.
 *   - Otherwise, the method walks up the post-dominator tree to find the
 * nearest ancestor that is in the slice and assigns it as the attractor.
 *
 * @param loop Pointer to the loop being analyzed, or nullptr if not applicable.
 */
void ProgramSlice::computeAttractorBlocks(const Loop *loop) {
  std::map<const BasicBlock *, const BasicBlock *> attractors;
  LLVM_DEBUG(dbgs() << "Computing attractors...\n");
  const PostDominatorTree PDT(*_parentFunction);
  for (const BasicBlock &BB : *_parentFunction) {
    // ~special case~ if the slice criterion is inside a loop and the block is
    // not part of the slice, skip it
    if (loop && !loop->isInvalid()) {
      if (!_BBsInSlice.count(&BB)) continue;
    }

    LLVM_DEBUG(dbgs() << "\tProcessing attractor for block: " << BB.getName()
                      << "\n");
    if (_BBsInSlice.count(&BB) > 0) {
      attractors[&BB] = &BB;
      LLVM_DEBUG(dbgs() << "\t\tBlock attractor: " << attractors[&BB]->getName()
                        << "\n");
      continue;
    }
    const DomTreeNode *OrigBB = PDT.getNode(&BB);
    const DomTreeNode *Cand = OrigBB->getIDom();
    while (Cand != nullptr) {
      if (_BBsInSlice.count(Cand->getBlock()) > 0) {
        break;
      }
      Cand = Cand->getIDom();
    }
    if (Cand) {
      attractors[&BB] = Cand->getBlock();
      LLVM_DEBUG(dbgs() << "\t\tBlock attractor: " << attractors[&BB]->getName()
                        << "\n");
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
      if (CB->getName().startswith("_daedalus_slice_")) {
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
        LLVM_DEBUG(
            dbgs()
            << "Cannot outline slice because instruction calls non-builtin "
               "function with no body: "
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

  // Initialize dominance tree traversal and identify the initial parent block.
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

    if (const Instruction *terminator = BB.getTerminator(); !terminator) {
      handleNoTerminatorBlock(BB, originalBB, F, DT, unreachableBlock);
    } else {
      handleTerminatorBlock(BB, originalBB, F, DT, unreachableBlock);
    }
  }

  // Clean up the unreachable block if it was not used.
  cleanupUnreachableBlock(unreachableBlock);

  // Update PHI nodes after all branch rerouting is complete.
  updatePHINodes(F);

  // Debugging output for predecessors (optional).
  logPredecessors(F);
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

/**
 * @brief Handles the case where a basic block in the sliced function has no
 * terminator instruction.
 *
 * This function is responsible for reconstructing the control flow for a basic
 * block (`BB`) in the sliced function that does not have a terminator
 * instruction. It inspects the terminator of the corresponding original basic
 * block (`originalBB`) and delegates to the appropriate handler based on
 * whether the original terminator was a branch or a switch instruction.
 *
 * @param BB                Reference to the basic block in the sliced function
 * that lacks a terminator.
 * @param originalBB        Pointer to the corresponding basic block in the
 * original function.
 * @param F                 Pointer to the function containing the basic block.
 * @param DT                Reference to the dominator tree of the original
 * function.
 * @param unreachableBlock  Pointer to a special block used as a target for
 * unreachable control flow.
 */
void ProgramSlice::handleNoTerminatorBlock(BasicBlock &BB,
                                           const BasicBlock *originalBB,
                                           const Function *F,
                                           const DominatorTree &DT,
                                           BasicBlock *unreachableBlock) {
  LLVM_DEBUG(dbgs() << "Parent BB without terminator: " << BB.getName()
                    << "\n");

  if (isa<BranchInst>(originalBB->getTerminator())) {
    handleNoTerminatorBranch(BB, originalBB, F, DT);
  } else if (isa<SwitchInst>(originalBB->getTerminator())) {
    handleNoTerminatorSwitch(BB, originalBB, DT, unreachableBlock);
  }
}

/**
 * @brief Handles the case where a basic block in the sliced function,
 * corresponding to an original block with a branch, has no terminator.
 *
 * This function reconstructs the control flow for a basic block (`BB`) in the
 * sliced function that lacks a terminator, when the corresponding original
 * basic block (`originalBB`) ended with a branch instruction. It iterates over
 * the original branch's successors, attempts to find or create a valid target
 * block in the slice, and creates a new branch to that target. It also updates
 * PHI nodes for the new successor as needed.
 *
 * @param BB Reference to the basic block in the sliced function that lacks a
 * terminator.
 * @param originalBB Pointer to the corresponding basic block in the original
 * function.
 * @param F Pointer to the function containing the basic block.
 * @param DT Reference to the dominator tree of the original function.
 */
void ProgramSlice::handleNoTerminatorBranch(BasicBlock &BB,
                                            const BasicBlock *originalBB,
                                            const Function *F,
                                            const DominatorTree &DT) {
  const auto *origBranch = cast<BranchInst>(originalBB->getTerminator());

  for (const BasicBlock *successor : origBranch->successors()) {
    LLVM_DEBUG(dbgs() << "\tSuccessor: " << successor->getName() << "\n");
    if (BasicBlock *newTarget =
            getOrCreateTargetBlock(successor, originalBB, DT)) {
      LLVM_DEBUG(dbgs() << "\tNew Successor: " << newTarget->getName() << "\n");
      BranchInst::Create(newTarget, &BB);
      updatePHINodesForSuccessor(newTarget, originalBB, &BB, F, DT);
      break;
    }
  }
}

/**
 * Retrieves the new target basic block corresponding to the given successor
 * basic block, using the attractor mapping and the original-to-new basic block
 * map.
 *
 * @param succ Pointer to the successor BasicBlock for which the new target is
 * sought.
 * @return Pointer to the new BasicBlock if found; otherwise, nullptr.
 *
 * The function performs the following steps:
 * 1. Checks if the input successor is valid.
 * 2. Looks up the attractor associated with the successor in the _attractors
 * map.
 * 3. Uses the attractor to find the corresponding new basic block in the
 * _origToNewBBmap.
 * 4. Returns the new basic block if all lookups succeed; otherwise, returns
 * nullptr.
 */
BasicBlock *ProgramSlice::getNewTargetByAttractor(const BasicBlock *succ) {
  if (!succ) return nullptr;
  const auto attIt = _attractors.find(succ);
  if (attIt == _attractors.end()) return nullptr;
  const auto mapIt = _origToNewBBmap.find(attIt->second);
  if (mapIt == _origToNewBBmap.end()) return nullptr;
  return mapIt->second;
};

/**
 * @brief Handles the case where a basic block in the sliced function,
 * corresponding to an original block with a switch, has no terminator.
 *
 * This function reconstructs the control flow for a basic block (`BB`) in the
 * sliced function that lacks a terminator, when the corresponding original
 * basic block (`originalBB`) ended with a switch instruction. It attempts to
 * map each case and the default destination of the original switch to valid
 * targets in the slice.
 * - If only one valid target is found, it creates a branch to that target.
 * - If no valid targets are found, it creates a branch to a fallback or
 * unreachable block.
 * - Otherwise, it creates a new switch instruction, mapping each case and the
 * default to the appropriate new or unreachable block.
 *
 * @param BB Reference to the basic block in the sliced function that lacks a
 * terminator.
 * @param originalBB Pointer to the corresponding basic block in the original
 * function.
 * @param DT Reference to the dominator tree of the original function.
 * @param unreachableBlock Pointer to a special block used as a target for
 * unreachable control flow.
 */
void ProgramSlice::handleNoTerminatorSwitch(BasicBlock &BB,
                                            const BasicBlock *originalBB,
                                            const DominatorTree &DT,
                                            BasicBlock *unreachableBlock) {
  auto *origSwitch = cast<SwitchInst>(originalBB->getTerminator());

  SmallVector<BasicBlock *, 4> validTargets;
  const BasicBlock *origDefault = origSwitch->getDefaultDest();
  if (auto *d = getNewTargetByAttractor(origDefault)) validTargets.push_back(d);

  for (auto &Case : origSwitch->cases()) {
    const BasicBlock *origSucc = Case.getCaseSuccessor();
    if (auto *t = getNewTargetByAttractor(origSucc)) validTargets.push_back(t);
  }

  // Create a branch if there's only one valid target
  if (validTargets.size() == 1) {
    BranchInst::Create(validTargets[0], &BB);
    return;
  }

  // If there are no valid targets, create a branch to the next dominated node
  if (validTargets.empty()) {
    if (BasicBlock *fallback =
            getNewTargetByDominatedBlock(DT, originalBB, originalBB)) {
      BranchInst::Create(fallback, &BB);
    }
    return;
  }

  // If the switch has more than two valid targets, create a new switch and
  // replace missing condition with an undefined value
  if (validTargets.size() >= 2) {
    unsigned numCases = origSwitch->getNumCases();
    Value *newCondition = nullptr;
    if (auto *condInst = dyn_cast<Instruction>(origSwitch->getCondition())) {
      if (auto it = _origToNewInst.find(condInst); it != _origToNewInst.end())
        newCondition = it->second;
    }
    if (!newCondition) {
      newCondition = UndefValue::get(origSwitch->getCondition()->getType());
    }
    SwitchInst *newSwitch =
        SwitchInst::Create(newCondition, unreachableBlock, numCases, &BB);

    BasicBlock *d = getNewTargetByAttractor(origDefault);
    newSwitch->setDefaultDest(d ? d : unreachableBlock);

    for (auto &Case : origSwitch->cases()) {
      const ConstantInt *caseVal = Case.getCaseValue();
      const BasicBlock *origSucc = Case.getCaseSuccessor();
      BasicBlock *dest = getNewTargetByAttractor(origSucc);
      newSwitch->addCase(const_cast<ConstantInt *>(caseVal),
                         dest ? dest : unreachableBlock);
    }
  }
}

/**
 * @brief Handles the terminator instruction of a basic block within a program
 * slice.
 *
 * This function inspects the terminator instruction of the given basic block
 * (`BB`). If the terminator is a branch instruction, it delegates handling to
 * `handleExistingBranchInst`. If the terminator is a switch instruction, it
 * delegates handling to `handleExistingSwitchInst`.
 *
 * @param BB                Reference to the basic block whose terminator is to
 * be handled.
 * @param originalBB        Pointer to the original basic block, may be used for
 * context.
 * @param F                 Pointer to the function containing the basic block.
 * @param DT                Reference to the dominator tree for dominance
 * queries.
 * @param unreachableBlock  Pointer to a basic block representing unreachable
 * code, if applicable.
 */
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

/**
 * @brief Handles the successors of an existing BranchInst within a program
 * slice.
 *
 * This function iterates over all successors of the given BranchInst (`BI`) and
 * ensures that each successor is valid within the current function (`F`). If a
 * successor is not part of the current function, it attempts to find or create
 * a suitable target block using `getOrCreateTargetBlock`. If a valid new
 * successor is found, it updates the branch instruction and corresponding PHI
 * nodes. If not, it reroutes the branch to an unreachable block to maintain
 * correctness.
 *
 * @param BI The branch instruction whose successors are to be handled.
 * @param currentBB The current basic block containing the branch instruction.
 * @param originalBB The original basic block from which the slice is derived.
 * @param F The function in which the slicing is being performed.
 * @param DT The dominator tree for the function, used for control flow
 * analysis.
 * @param unreachableBlock The block to reroute to if no valid successor can be
 * found.
 */
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
    LLVM_DEBUG(dbgs() << "\tSuccessor: " << successor->getName() << "\n");
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

/**
 * @brief Handles the rerouting of successors for an existing SwitchInst within
 * a function slice.
 *
 * This method iterates over all successors of the given SwitchInst (SI) and
 * ensures that each successor is valid within the current function context. If
 * a successor belongs to a different function, it attempts to create or
 * retrieve a suitable target block within the current function. If a valid new
 * successor cannot be found or created, the successor is rerouted to an
 * unreachable block. PHI nodes are updated as necessary to maintain
 * correctness.
 *
 * @param SI The SwitchInst whose successors are to be handled.
 * @param currentBB The current basic block being processed.
 * @param originalBB The original basic block from which the slice was created.
 * @param F The function in which the switch instruction resides.
 * @param DT The dominator tree for the function, used for control flow
 * analysis.
 * @param unreachableBlock The block to reroute to if no valid successor can be
 * found.
 */
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

/**
 * Finds the next dominated basic block starting from a given block, ensuring
 * that the new target is not a direct successor of the original block.
 *
 * @param DT       The dominator tree used to determine dominance relationships.
 * @param startBB  The basic block from which to start the search for the next
 * dominated node.
 * @param origBB   The original basic block whose successors should be excluded
 * as potential targets.
 * @return         A pointer to the next dominated BasicBlock, or nullptr if no
 * suitable block is found.
 */
BasicBlock *
ProgramSlice::getNewTargetByDominatedBlock(const DominatorTree &DT,
                                           const BasicBlock *startBB,
                                           const BasicBlock *origBB) {
  BasicBlock *newTarget = findNextDominatedNode(DT, startBB);
  // If the new target is a successor of the original block, it should not
  // be considered as a next dominated node
  if (newTarget &&
      is_contained(successors(origBB), _newToOrigBBmap[newTarget])) {
    newTarget = nullptr;
  }
  return newTarget;
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
                                                 const DominatorTree &DT) {
  BasicBlock *newTarget = getNewTargetByAttractor(successor);
  // ~special case~ if the new target is not in the slice, find a dominated
  // block.
  if (!newTarget) {
    newTarget = getNewTargetByDominatedBlock(DT, originalBB, originalBB);
  }
  return newTarget;
}

/**
 * @brief Updates PHI nodes in a successor basic block to reflect changes in
 * control flow.
 *
 * This function iterates over all instructions in the given successor basic
 * block (`newSuccessor`) and updates any PHI nodes that have
 * `originalIncomingBlock` as an incoming block. The update replaces
 * `originalIncomingBlock` with `currentBB` as the incoming block. The update
 * logic considers dominance relationships to ensure correctness, particularly
 * when the original incoming block is not part of the current function (`F`).
 * In such cases, the function checks the dominator tree to determine if the
 * replacement should occur.
 *
 * @param newSuccessor The successor basic block whose PHI nodes may need
 * updating.
 * @param originalIncomingBlock The original incoming block to be replaced in
 * PHI nodes.
 * @param currentBB The basic block to use as the new incoming block in PHI
 * nodes.
 * @param F The function containing the basic blocks.
 * @param DT The dominator tree for the function, used to check dominance
 * relationships.
 */
void ProgramSlice::updatePHINodesForSuccessor(
    BasicBlock *newSuccessor, const BasicBlock *originalIncomingBlock,
    BasicBlock *currentBB, const Function *F, const DominatorTree &DT) {
  for (Instruction &I : *newSuccessor) {
    if (auto *phi = dyn_cast<PHINode>(&I)) {
      // This part handles a specific dominance-based PHI update.
      // It checks if the original incoming block's dominator chain leads back
      // to currentBB.
      if (originalIncomingBlock->getParent() !=
          F) { // Check if originalIncomingBlock is not in the current function
               // F
        if (const DomTreeNode *origBBNode = DT.getNode(originalIncomingBlock)) {
          const DomTreeNode *ancestorNode = origBBNode->getIDom();
          while (ancestorNode) {
            if (ancestorNode->getBlock() == originalIncomingBlock) {
              phi->replaceIncomingBlockWith(originalIncomingBlock, currentBB);
              break;
            }
            ancestorNode = ancestorNode->getIDom();
          }
        }
      } else {
        // If originalIncomingBlock is in F, simply replace it.
        phi->replaceIncomingBlockWith(originalIncomingBlock, currentBB);
      }
    }
  }
}

/**
 * @brief Replaces all uses of a given successor basic block with an unreachable
 * block within a specific function, and updates the terminator instruction to
 * set the unreachable block as the new successor.
 *
 * This function searches for all uses of the specified successor basic block
 * (`successorToReplace`) within the provided function (`F`) and replaces them
 * with the given unreachable block (`unreachableBlock`). Only uses where the
 * user is an instruction belonging to the function `F` are replaced. After
 * replacing the uses, the function updates the provided terminator instruction
 * (`terminator`) to set the unreachable block as the successor at the specified
 * index (`successorIndex`).
 *
 * @param successorToReplace The basic block whose uses are to be replaced.
 * @param unreachableBlock The basic block to replace uses with.
 * @param F The function in which to perform the replacement.
 * @param terminator The terminator instruction whose successor will be updated.
 * @param successorIndex The index of the successor to update in the terminator
 * instruction.
 */
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
 * basic block and applying the llvm::simplifyCFG function. The process
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
 * @brief Outlines the program slice into a new function.
 *
 * @details This function creates a new function that contains the instructions
 * and basic blocks from the program slice. It sets up the function's return
 * type, arguments, and attributes, and populates it with the necessary basic
 * blocks and instructions.
 *
 * @return A pointer to the newly created Function representing the outlined
 * program slice, or nullptr if outlining is not possible.
 */
Function *ProgramSlice::outline() {
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
  rerouteBranches(F);
  addReturnValue(F);
  reorderBlocks(F);
  replaceArgs(F, dt);

  LLVM_DEBUG(dbgs() << "Outlined function:\n" << *F << "\n");

  int numEntryBlocks = 0;
  for (BasicBlock &BB : *F)
    if (BB.hasNPredecessors(0)) ++numEntryBlocks;

  const std::string errorMsg(
      "Original function name: " + _parentFunction->getName().str() + "\n");
  if (numEntryBlocks != 1) {
    errs() << errorMsg;
  }
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
