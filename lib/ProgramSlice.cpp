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
#include <stack>
#include <tuple>
#include <utility>

#include "llvm/ADT/SmallVector.h"
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
#include "llvm/IR/Value.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/Local.h"

#include <random>

#define DEBUG_TYPE "ProgramSlice"

using namespace llvm;

struct dataDependence {
  std::set<const BasicBlock *> BBs;
  std::set<const Value *> dependences;
  std::set<const Value *> phiOnArgs;
};

struct Status {
  bool status;
  std::string msg;
};

using VisitedPair = std::pair<const BasicBlock *, const PHINode *>;

/**
 * @brief Appends gate values from a given basic block to the parent block of a
 * PHI node.
 *
 * This function traverses the control flow graph starting from the specified
 * basic block (`BB`) and, for each encountered block, appends its associated
 * gate values (from the `gates` map) into the gate list of the PHI node's
 * parent block. The traversal avoids revisiting pairs of basic blocks and PHI
 * nodes by tracking them in the `visitedPairs` set. If a gate value is an
 * instruction, the traversal continues from its parent block. The function is
 * intended to propagate gate values up the control flow to ensure all relevant
 * gates are considered for the PHI node's parent block.
 *
 * @param BB           The starting basic block for traversal.
 * @param phi          The PHI node whose parent block will receive the gates.
 * @param gates        A map from basic blocks to their associated gate values.
 * @param visitedPairs A set used to track visited (basic block, PHI node) pairs
 * to avoid cycles.
 */
static void appendBlockGatesToPhiParent(
    const BasicBlock *BB, const PHINode *phi,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates,
    std::set<VisitedPair> &visitedPairs) {
  std::stack<VisitedPair> callStack;
  callStack.push({BB, phi});

  while (!callStack.empty()) {
    auto [curBB, curPhi] = callStack.top();
    callStack.pop();
    VisitedPair curPair = {curBB, curPhi};
    if (visitedPairs.count(curPair)) continue;
    visitedPairs.insert(curPair);
    if (curBB == curPhi->getParent()) continue;
    auto it = gates.find(curBB);
    if (it != gates.end()) {
      LLVM_DEBUG(dbgs() << "\t\t\t\tAdding gates from block "
                        << curBB->getName() << " into gates of block "
                        << curPhi->getParent()->getName() << "\n");
      for (const Value *gate : it->second) {
        gates[curPhi->getParent()].push_back(gate);
        LLVM_DEBUG(dbgs() << "\t\t\t\tAdded gate: " << *gate << "\n");
        if (const Instruction *gateInst = dyn_cast<Instruction>(gate))
          callStack.push({gateInst->getParent(), curPhi});
      }
    }
  }
}

/**
 * @brief Checks if a basic block contains any instruction with a data
 * dependency.
 *
 * Iterates over all instructions in the given basic block and determines if any
 * of them are present in the provided set of dependent values.
 *
 * @param BB Pointer to the basic block to be checked.
 * @param deps Set of values representing data dependencies.
 * @return true if any instruction in the basic block is found in the dependency
 * set, false otherwise.
 */
bool blockContainsDataDependency(const BasicBlock *BB,
                                 std::set<const Value *> deps) {
  bool hasDep = false;
  for (const Instruction &inst : *BB) {
    if (llvm::is_contained(deps, &inst)) {
      hasDep = true;
      break;
    }
  }
  return hasDep;
}

/**
 * @brief Computes the data dependencies for a given LLVM instruction within a
 * function and (optionally) a loop.
 *
 * This function traverses the operands of the specified instruction, collecting
 * all values and basic blocks that are data-dependent on the instruction. It
 * also handles PHI nodes, loop boundaries, and global variables, and identifies
 * special cases such as critical PHI dependencies. The function populates a set
 * of "gates" (instructions that act as control/data boundaries) for PHI nodes
 * and returns a status indicating success or failure (e.g., if a dependency is
 * on a global variable).
 *
 * @param I The LLVM instruction for which to compute data dependencies.
 * @param F The LLVM function containing the instruction.
 * @param loop Optional pointer to the loop containing the instruction, or
 * nullptr if not in a loop.
 * @param loopHeader Optional pointer to the loop header basic block, or nullptr
 * if not in a loop.
 * @param gates A map from basic blocks to vectors of values representing "gate"
 * instructions for PHI nodes. This map may be updated during the computation.
 * @return std::pair<Status, dataDependence>
 *         - Status: Indicates whether the computation was successful and
 * provides an error message if not.
 *         - dataDependence: Contains sets of dependent basic blocks, values,
 * PHI arguments, a flag for critical PHI, and values that should be passed as
 * arguments due to loop boundaries.
 *
 * @note
 * - Dependencies on global variables are treated as errors.
 * - Handles PHI nodes specially, including those at loop headers and those with
 * back edges.
 * - Only considers dependencies within the specified loop if provided.
 * - Updates the gates map with control dependencies for PHI nodes.
 */
std::pair<Status, dataDependence> computeDataDependencies(
    const Instruction &I, Function &F, Loop *loop, BasicBlock *loopHeader,
    LoopInfo &loopInfo,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates) {
  bool isSliceCriteionInLoop = loop && !loop->isInvalid();
  Status status = {true, ""};
  std::set<const Value *> deps;
  std::set<const BasicBlock *> BBs;
  std::set<const Value *> visited;
  std::queue<const Value *> worklist;
  std::set<const Value *> phiOnArgs;

  visited.insert(&I);
  worklist.push(&I);

  // Initialize visitedPairs for PHI/BBlock pairs
  std::set<VisitedPair> visitedPairs;

  // Helper to process operands
  auto processOperand = [&](const Value *operand) {
    // ~special case~
    if (isa<GlobalVariable>(operand)) {
      status = {false, "Some dependency is on a Global Variable."};
      return false;
    }

    if (!isa<Instruction>(operand) && !isa<Argument>(operand)) return true;

    if (visited.count(operand)) {
      return true;
    }

    LLVM_DEBUG(dbgs() << "\t\t\t[Data Dependency] Operand being processed: "
                      << *operand << "\n");

    if (isSliceCriteionInLoop) {
      if (const PHINode *phi = dyn_cast<PHINode>(operand)) {
        if (phi->getParent() == loopHeader) { // ~special case~
          LLVM_DEBUG(
              dbgs()
              << "\t\t\t\t--> Operand is a PHINode inside a loop header...\n");
          phiOnArgs.insert(operand);
          visited.insert(operand);
          return true;
        } else if (!loop->contains(phi->getParent())) { // ~special case~
          LLVM_DEBUG(dbgs()
                     << "\t\t\t\t--> Operand is a PHINode outside the current "
                        "criterion's loop...\n");
          phiOnArgs.insert(operand);
          visited.insert(operand);
          return true;
        }
      } else if (const Instruction *inst = dyn_cast<Instruction>(operand)) {
        // ~special case~ if a dependency is not inside the loop, pass it as an
        // argument to the current slice function
        if (!loop->contains(inst->getParent())) {
          LLVM_DEBUG(dbgs() << "\t\t\t\t--> Operand is outside the current "
                               "criterion's loop...\n");
          phiOnArgs.insert(operand);
          visited.insert(operand);
          return true;
        }
      }
    }

    visited.insert(operand);
    worklist.push(operand);
    return true;
  };

  // Process worklist
  while (!worklist.empty()) {
    const Value *cur = worklist.front();
    worklist.pop();

    deps.insert(cur);

    if (const Instruction *dep = dyn_cast<Instruction>(cur)) {
      LLVM_DEBUG(dbgs() << "\t\t[Data Dependency] Instruction being processed: "
                        << *dep << "\n");

      BBs.insert(dep->getParent());

      for (const Use &U : dep->operands())
        if (!processOperand(U.get())) break;
    }

    if (const PHINode *phi = dyn_cast<PHINode>(cur)) {
      LLVM_DEBUG(dbgs() << "\t\t[Control Dependency] PHINode being processed: "
                        << *phi << "\n");

      for (unsigned i = 0, e = phi->getNumIncomingValues(); i != e; ++i) {
        const BasicBlock *incomingBB = phi->getIncomingBlock(i);
        const Value *incomingValue = phi->getIncomingValue(i);

        bool hasDep = blockContainsDataDependency(incomingBB, deps);

        // ~special case~ if the incoming block has no dependencies, but have
        // control dependencies, we still need to compute its terminator
        // dependencies
        if (!hasDep) {
          worklist.push(incomingBB->getTerminator());
          visited.insert(incomingBB->getTerminator());
        }

        BBs.insert(incomingBB);

        // ~special case~ if a phinode's incoming block is an exit block of a
        // loop, then add its terminator to the gates of the phinode's parent
        Loop *loopForBB = loopInfo.getLoopFor(incomingBB);
        if (loopForBB && loopForBB->isLoopExiting(incomingBB)) {
          // Only add the terminator as a gate if incomingBB has at least one
          // instruction in deps
          if (hasDep) {
            LLVM_DEBUG(dbgs()
                       << "\t\t[Control Dependency] PHINode has an incoming "
                          "block that is an exit block of a loop and contains "
                          "a dependency: "
                       << incomingBB->getName() << "\n");
            gates[phi->getParent()].push_back(incomingBB->getTerminator());
          }
        }

        if (const Instruction *incomingInst =
                dyn_cast<Instruction>(incomingValue)) {
          // ~special case~ if the incoming value is not from the incoming block
          // in the current PHINode, then add the incoming block's terminator to
          // the gates of the current PHINode's parent
          if (incomingInst->getParent() != incomingBB) {
            LLVM_DEBUG(dbgs()
                       << "\t\t[Control Dependency] Incoming value is not "
                          "from its incoming block in the current PHINode..."
                       << "\n");
            for (const Value *gate : gates[incomingBB])
              gates[phi->getParent()].push_back(gate);
          } else {
            // ~special case~ if the incoming value is from the incoming block
            // in the current PHINode, but the incoming block has no PHINodes in
            // it, but has incoming value's data dependencies, then add the
            // missing blocks and branch instructions to the gates of the
            // current PHINode's parent
            LLVM_DEBUG(dbgs()
                       << "\t\t[Control Dependency] PHINode's incoming value "
                          "is from the same block. Checking for control using "
                          "data dependencies...\n");
            if (incomingBB->phis().empty())
              appendBlockGatesToPhiParent(incomingBB, phi, gates, visitedPairs);
          }
        }
      }

      for (const Value *gate : gates[phi->getParent()]) {
        if (gate) {
          if (!visited.count(gate)) {
            LLVM_DEBUG(dbgs() << "\t\t\t[Control Dependency] Pushing gate: "
                              << *gate << "\n");

            // ~special case~ if the gate instruction is outside the current
            // slice criterion's loop, don't treat it as a dependency
            if (const BranchInst *BI = dyn_cast<BranchInst>(gate)) {
              if (BI->isConditional()) {
                if (isSliceCriteionInLoop && !loop->contains(BI->getParent())) {
                  LLVM_DEBUG(
                      dbgs()
                      << "\t\t\t--> Branch instruction is outside the current "
                         "criterion's loop...\n");
                  continue;
                }
              }
            } else if (const SwitchInst *SI = dyn_cast<SwitchInst>(cur)) {
              if (isSliceCriteionInLoop && !loop->contains(SI->getParent())) {
                LLVM_DEBUG(
                    dbgs()
                    << "\t\t\t--> Switch instruction is outside the current "
                       "criterion's loop...\n");
                continue;
              }
            }

            worklist.push(gate);
            visited.insert(gate);
          }
        }
      }
    }
  }
  return {status, {BBs, deps, phiOnArgs}};
}

/**
 * @brief Computes data and control dependencies for a given instruction within
 * a function.
 *
 * This function analyzes the specified instruction `I` in the context of the
 * function `F` using the provided FunctionAnalysisManager `FAM`. It determines
 * the loop context of the instruction, computes its data dependencies, and then
 * computes control dependencies based on the data dependencies and loop
 * structure.
 *
 * @param I The instruction for which dependencies are to be computed.
 * @param F The function containing the instruction.
 * @param FAM The FunctionAnalysisManager providing analysis results.
 * @return A pair consisting of a Status object indicating success or failure,
 *         and a dataDependence structure containing sets of dependent values,
 *         basic blocks, and related PHINode information.
 */
std::pair<Status, dataDependence> getDataDependencies(
    Instruction &I, Function &F, FunctionAnalysisManager &FAM,
    std::unordered_map<const BasicBlock *, SmallVector<const Value *>> &gates) {

  LoopInfo &loopInfo = FAM.getResult<LoopAnalysis>(F);
  Loop *loop = loopInfo.getLoopFor(I.getParent());
  BasicBlock *loopHeader = (loop) ? loop->getHeader() : nullptr;

  auto [status, resultsData] =
      computeDataDependencies(I, F, loop, loopHeader, loopInfo, gates);

  return {status, resultsData};
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
    if (const BranchInst *BI = dyn_cast<BranchInst>(terminator)) {
      if (!BI->isConditional()) {
        LLVM_DEBUG(
            dbgs() << " Unconditional terminator found when trying to get "
                      "gate instruction...\n");
      } else {
        branchInst = BI;
      }
    } else if (const SwitchInst *SI = dyn_cast<SwitchInst>(terminator)) {
      branchInst = SI;
    }
  }
  return branchInst;
}

/**
 * @brief Computes the control dependency "gates" for each basic block in a
 * function.
 *
 * This function analyzes the control flow of the given function @p F and
 * determines, for each basic block, the set of instructions (gates) that
 * control entry into that block. Gates are typically conditional branch or
 * switch instructions in predecessor blocks that dominate the current block but
 * are not post-dominated by it. If a predecessor does not directly dominate the
 * block, the function finds the controlling block and its gate.
 *
 * The result is a mapping from each basic block to a vector of gate
 * instructions that represent the control dependencies for that block.
 *
 * @param F The function for which to compute gates.
 * @return A map from each basic block to a vector of gate instructions
 * (conditional branches or switches) that control entry into the block.
 */
static const std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
computeGates(Function &F) {
  DominatorTree DT(F);
  PostDominatorTree PDT(F);
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates;
  for (const BasicBlock &BB : F) {
    SmallVector<const Value *> BB_gates;
    const unsigned num_preds = pred_size(&BB);
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
        const Value *ctrl_gate = getGate(ctrl_BB);
        if (ctrl_gate) {
          LLVM_DEBUG(dbgs() << " Edge controlled by " << ctrl_BB->getName()
                            << " " << ctrl_gate->getName()
                            << "\n\tInstruction: " << *ctrl_gate << "\n");
          BB_gates.push_back(ctrl_gate);
        }
      }
      LLVM_DEBUG(dbgs() << "\n");
    }
    gates.emplace(std::make_pair(&BB, BB_gates));
  }
  return gates;
}

/**
 * @brief Constructs a ProgramSlice object.
 *
 * @details This constructor initializes a ProgramSlice object by computing
 * the data and control dependencies of the given initial instruction within
 * the context of the specified function and post-dominator tree. It sets up
 * the necessary structures for representing the program slice, including the
 * set of instructions in the slice, dependency arguments, phi-function types,
 * and basic blocks in the slice. It also pre-computes struct types to avoid
 * redundant type creation and computes attractor blocks.
 *
 * @param Initial The initial instruction to be sliced.
 * @param F The function containing the initial instruction.
 * @param PDT The post-dominator tree of the function.
 */
ProgramSlice::ProgramSlice(Instruction &Initial, Function &F,
                           FunctionAnalysisManager &FAM,
                           std::set<BasicBlock *> &tryCatchBlocks)
    : _initial(&Initial), _parentFunction(&F) {

  assert(Initial.getParent()->getParent() == &F &&
         "Slicing instruction from different function!");

  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> gates =
      computeGates(F);

  auto [check, data] = getDataDependencies(Initial, F, FAM, gates);

  // ~special case~
  for (auto &BB : data.BBs) {
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

  std::set<const Instruction *> instsInSlice;
  SmallVector<Value *> depArgs;

  for (auto &val : data.dependences) {
    if (Argument *A = dyn_cast<Argument>(const_cast<Value *>(val))) {
      LLVM_DEBUG(
          dbgs() << "\tValue from data.dependences being inserted in depArgs: "
                 << *val << "\n");
      depArgs.push_back(A);
    } else if (const Instruction *I = dyn_cast<Instruction>(val)) {
      instsInSlice.insert(I);
    }
  }

  for (auto &val : data.phiOnArgs) {
    LLVM_DEBUG(dbgs() << "\tValue from phiOnArgs being inserted in depArgs: "
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
  _BBsInSlice = data.BBs;

  LLVM_DEBUG({
    dbgs() << "\nBasic blocks in _BBsInSlice:\n";
    for (const BasicBlock *BB : _BBsInSlice) {
      dbgs() << "\t" << BB->getName() << "\n";
    }
  });

  computeAttractorBlocks();
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
void ProgramSlice::computeAttractorBlocks() {
  PostDominatorTree PDT(*_parentFunction);
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
  // Stack for iterative traversal
  std::stack<std::pair<DomTreeNode *, DomTreeNode *>> stack;
  stack.push({cur, parent});

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
      stack.push({child, parentNode});

      // If the child block is part of the slice and there is a valid parent
      if (parentNode && _BBsInSlice.count(child->getBlock())) {
        BasicBlock *parentBB = _origToNewBBmap[parent->getBlock()];
        BasicBlock *childBB = _origToNewBBmap[child->getBlock()];
        if (parentBB->getTerminator() == nullptr) {
          BranchInst *newBranch = BranchInst::Create(childBB, parentBB);
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
      PHINode *PN = dyn_cast<PHINode>(I_it);
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
 * @brief Performs a BFS on the dominator tree to find the next dominated basic
 * block that is present in the target set.
 *
 * @param DT The DominatorTree for the function.
 * @param startNodeBB The BasicBlock from which to start the BFS.
 * @param targetBBs A set of BasicBlocks to search within.
 * @param origToNewBBmap A map from original BasicBlocks to their new
 * counterparts in the slice.
 * @return BasicBlock* The new BasicBlock corresponding to the found dominated
 * block, or nullptr if not found.
 */
static BasicBlock *findNextDominatedNode(
    DominatorTree &DT, const BasicBlock *startNodeBB,
    const std::set<const BasicBlock *> &targetBBs,
    std::map<const BasicBlock *, BasicBlock *> &origToNewBBmap) {
  BasicBlock *newTarget = nullptr;
  std::stack<DomTreeNode *> bfsStack;
  std::set<const BasicBlock *> visitedBFS;
  DomTreeNode *domNode = DT.getNode(const_cast<BasicBlock *>(startNodeBB));
  if (domNode) bfsStack.push(domNode);
  while (!bfsStack.empty()) {
    DomTreeNode *curNode = bfsStack.top();
    bfsStack.pop();
    const BasicBlock *curBB = curNode->getBlock();
    if (visitedBFS.count(curBB)) continue;
    visitedBFS.insert(curBB);
    BasicBlock *curBBNew = origToNewBBmap[curBB];
    if (curBBNew && curBB != startNodeBB &&
        targetBBs.count(curBB)) {
      newTarget = curBBNew;
      break;
    }
    for (DomTreeNode *child : *curNode) {
      bfsStack.push(child);
    }
  }
  return newTarget;
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

  // Visit blocks in order of dominance. If BB1 and BB2 are in
  // slice, BB1 IDom BB2, and BB1 has no terminator, create branch BB1->BB2
  addDomBranches(init, parent, visited);

  // Save list of PHINodes to update. Old blocks should be replaced by
  // new blocks as predecessors in merging values. We store PHIs to update
  // at the end of the function to avoid invalidating iterators if we
  // modify in-place.
  std::map<PHINode *, std::pair<BasicBlock *, BasicBlock *>> PHIsToUpdate;

  // Add an unreachable block to be the target of branches that should
  // be removed.
  BasicBlock *unreachableBlock =
      BasicBlock::Create(F->getContext(), "_daedalus_unreachable", F);
  UnreachableInst *unreach =
      new UnreachableInst(F->getContext(), unreachableBlock);

  // Iterate over all blocks in the function
  for (BasicBlock &BB : *F) {
    Instruction *terminator = BB.getTerminator();
    if (!terminator) {
      LLVM_DEBUG(dbgs() << "Parent BB without terminator: " << BB.getName()
                        << "\n");
      const BasicBlock *parentBB = _newToOrigBBmap[&BB];
      if (const BranchInst *origBranch =
              dyn_cast<BranchInst>(parentBB->getTerminator())) {
        for (const BasicBlock *suc : origBranch->successors()) {
          BasicBlock *newTarget = _origToNewBBmap[_attractors[suc]];

          // ~special case~ if the new target is not in the slice, we
          // find a new target that is in the slice by searching for a dominated
          // block that is in the slice
          if (!newTarget) {
            newTarget =
                findNextDominatedNode(DT, suc, _BBsInSlice, _origToNewBBmap);
            if (!newTarget) continue;
          }
          LLVM_DEBUG(dbgs()
                     << "Successor: " << suc->getName() << "\nAttractor: "
                     << (_attractors[suc] ? _attractors[suc]->getName().str()
                                          : "null")
                     << "\n");
          BranchInst::Create(newTarget, &BB);

          // If new successor has any PHINodes that merged a path from
          // a block that was dominated by this block, update its
          // incoming block to be this instead.
          for (Instruction &I : *newTarget) {
            if (!isa<PHINode>(I)) continue;
            PHINode *phi = cast<PHINode>(&I);
            for (BasicBlock *newTargetPHIBB : phi->blocks()) {
              if (newTargetPHIBB->getParent() != F) {
                DomTreeNode *OrigBB = DT.getNode(newTargetPHIBB);
                DomTreeNode *Cand = OrigBB->getIDom();
                while (Cand) {
                  if (Cand->getBlock() == parentBB) break;
                  Cand = Cand->getIDom();
                }
                if (Cand) phi->replaceIncomingBlockWith(newTargetPHIBB, &BB);
              }
            }
          }
          break;
        }
      } else if (const SwitchInst *origSwitch =
                     dyn_cast<SwitchInst>(parentBB->getTerminator())) {
        // ~special case~ if the new function has just one target from the
        // original switch, then create an unconditional branch to it

        // Collect valid new targets for the switch's successors
        SmallVector<BasicBlock *, 4> validTargets;
        for (unsigned int idx = 0; idx < origSwitch->getNumSuccessors();
             ++idx) {
          BasicBlock *suc = origSwitch->getSuccessor(idx);
          BasicBlock *newTarget = _origToNewBBmap[_attractors[suc]];
          if (newTarget && _BBsInSlice.count(newTarget))
            validTargets.push_back(newTarget);
        }
        // Only create an unconditional branch if there is exactly one valid
        // target
        if (validTargets.size() == 1) {
          BranchInst::Create(validTargets.front(), &BB);
        } else if (validTargets.size() == 0) {
          // ~special case~ if the new target is not in the slice, we
          // find a new target that is in the slice by searching for a dominated
          // block that is in the slice
          BasicBlock *newTarget =
              findNextDominatedNode(DT, parentBB, _BBsInSlice, _origToNewBBmap);
          if (!newTarget) continue;
          BranchInst::Create(newTarget, &BB);
        }
      }
    } else {
      LLVM_DEBUG(dbgs() << "Parent BB WITH terminator: " << BB.getName()
                        << "\n");
      if (BranchInst *BI = dyn_cast<BranchInst>(terminator)) {
        for (unsigned int idx = 0; idx < BI->getNumSuccessors(); ++idx) {
          BasicBlock *suc = BI->getSuccessor(idx);
          if (suc->getParent() == F) continue;
          const BasicBlock *attractor = _attractors[suc];
          BasicBlock *newSucc = _origToNewBBmap[attractor];
          if (!newSucc) {
            // ~special case~ if the new target is not in the slice, we
            // find a new target that is in the slice by searching for a
            // dominated block that is in the slice
            newSucc =
                findNextDominatedNode(DT, suc, _BBsInSlice, _origToNewBBmap);
            if (!newSucc) {
              suc->replaceUsesWithIf(unreachableBlock, [F](Use &U) {
                auto *UserI = dyn_cast<Instruction>(U.getUser());
                return UserI && UserI->getParent()->getParent() == F;
              });
              BI->setSuccessor(idx, unreachableBlock);
              continue;
            }
          }
          BI->setSuccessor(idx, newSucc);
          for (Instruction &I : *newSucc) {
            if (!isa<PHINode>(I)) continue;
            PHINode *phi = cast<PHINode>(&I);
            phi->replaceIncomingBlockWith(suc, &BB);
          }
        }
      } else if (SwitchInst *SI = dyn_cast<SwitchInst>(terminator)) {
        for (unsigned int idx = 0; idx < SI->getNumSuccessors(); ++idx) {
          BasicBlock *suc = SI->getSuccessor(idx);
          if (suc->getParent() == F) continue;
          const BasicBlock *attractor = _attractors[suc];
          BasicBlock *newSucc = _origToNewBBmap[attractor];
          if (!newSucc) {
            // ~special case~ if the new target is not in the slice, we
            // find a new target that is in the slice by searching for a
            // dominated block that is in the slice
            newSucc =
                findNextDominatedNode(DT, suc, _BBsInSlice, _origToNewBBmap);
            if (!newSucc) {
              suc->replaceUsesWithIf(unreachableBlock, [F](Use &U) {
                auto *UserI = dyn_cast<Instruction>(U.getUser());
                return UserI && UserI->getParent()->getParent() == F;
              });
              SI->setSuccessor(idx, unreachableBlock);
              continue;
            }
          }
          SI->setSuccessor(idx, newSucc);
          for (Instruction &I : *newSucc) {
            if (!isa<PHINode>(I)) continue;
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

  LLVM_DEBUG({
    dbgs() << "\n\tAttractors:\n";
    for (const auto &pair : _attractors) {
      std::string name = (pair.second) ? pair.second->getName().str() : "null";
      dbgs() << "\t\tBlock: " << pair.first->getName()
             << " -> Attractor: " << name << "\n";
    }
    dbgs() << "\tPredecessors of original function:\n";
    for (const BasicBlock &BB : *_parentFunction) {
      dbgs() << "\t\tBlock: " << BB.getName() << " -> Predecessors: ";
      for (const BasicBlock *pred : predecessors(&BB)) {
        dbgs() << pred->getName() << " ";
      }
      dbgs() << "\n";
    }
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
 * @brief Adds a return instruction to the exit basic block of the given
 * function.
 *
 * This method ensures that the exit basic block of the function has a valid
 * return instruction. If the block already has a terminator (such as an
 * unconditional branch), it removes any invalid PHINode incoming values from
 * successor blocks and erases the existing terminator.
 *
 * The return value is determined based on the type of the initial instruction:
 * - If the initial instruction is a ReturnInst, its return value is used.
 * - If the initial instruction is a CallInst to a function returning void, a
 * void return is created.
 * - Otherwise, the value mapped from the initial instruction is used as the
 * return value.
 *
 * @param F The function to which the return instruction will be added.
 * @return A pointer to the newly created ReturnInst.
 */
ReturnInst *ProgramSlice::addReturnValue(Function *F) {
  BasicBlock *exit = _Imap[_initial]->getParent();

  if (exit->getTerminator()) {
    // The current terminator is an unconditional branch to a basic block with
    // invalid PHINode incoming values. They get removed from the current
    // slice because they are not in the slice.
    if (auto *branchInst = dyn_cast<BranchInst>(exit->getTerminator())) {
      if (!branchInst->isConditional()) {
        for (auto *succ : successors(exit)) {
          for (Instruction &inst : *succ) {
            if (auto *phiNode = dyn_cast<PHINode>(&inst)) {
              phiNode->removeIncomingValue(exit, /*DeletePHIIfEmpty=*/false);
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
  if (auto *callInst = dyn_cast<CallInst>(_initial)) {
    Function *ftype = callInst->getCalledFunction();
    if (ftype) {
      if (ftype->getReturnType()->isVoidTy())
        return ReturnInst::Create(F->getParent()->getContext(), nullptr, exit);
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
  if (!_canOutline.first) {
    LLVM_DEBUG(dbgs() << _canOutline.second << '\n');
    return nullptr;
  }

  LLVM_DEBUG({
    dbgs() << "\n";
    dbgs() << "Instructions in _instsInSlice:\n";
    for (const auto *inst : _instsInSlice) {
      dbgs() << *inst << "\n";
    }
    dbgs() << "\n";
  });

  const int size = 3;
  if (_instsInSlice.size() < size) {
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

  LLVM_DEBUG(dbgs() << "Outlined function:\n" << *F);

  // ~special case~ Assert that there is only one basic block with no
  // predecessors, and it is the entry block.
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
  return _Imap;
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
Function *ProgramSlice::getParentFunction() { return _parentFunction; }