#ifndef PHI_GATE_ANALYZER_H
#define PHI_GATE_ANALYZER_H

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include <memory>
#include <unordered_map>
#include <variant>

namespace llvm {

/**
 * @brief Path Expression Representation
 *
 * This section defines the classes to represent the gating path expressions
 * as described in the paper. A path expression can be a simple edge, a union
 * of paths, a concatenation of paths, or a special empty/not-taken symbol.
 */

struct PathExpr;

/**
 * @brief Represents a simple path edge, often a conditional branch.
 */
struct EdgeExpr {
  const Instruction *Branch;
  unsigned SuccessorIndex; // which successor path is taken

  EdgeExpr(const Instruction *TI, unsigned Idx)
      : Branch(TI), SuccessorIndex(Idx) {}

  void print(raw_ostream &OS) const;
};

/**
 * @brief Represents the union of two paths (e.g., from an if-then-else structure).
 */
struct UnionExpr {
  std::shared_ptr<PathExpr> Lhs;
  std::shared_ptr<PathExpr> Rhs;

  UnionExpr(std::shared_ptr<PathExpr> L, std::shared_ptr<PathExpr> R)
      : Lhs(L), Rhs(R) {}

  void print(raw_ostream &OS) const;
};

/**
 * @brief Represents the concatenation of two paths.
 */
struct ConcatExpr {
  std::shared_ptr<PathExpr> Lhs;
  std::shared_ptr<PathExpr> Rhs;

  ConcatExpr(std::shared_ptr<PathExpr> L, std::shared_ptr<PathExpr> R)
      : Lhs(L), Rhs(R) {}
  void print(raw_ostream &OS) const;
};

/**
 * @brief Represents an unconditional path (Lambda) or a path not taken (Empty/Phi).
 */
enum class SpecialExprType { Lambda, Empty };

/**
 * @brief Special path expression for Lambda or Empty (not-taken) paths.
 */
struct SpecialExpr {
  SpecialExprType Type;
  // The predecessor basic block this path enters through.
  // This is used to map phi-node arguments correctly.
  const BasicBlock *Predecessor;

  SpecialExpr(SpecialExprType T, const BasicBlock *Pred = nullptr)
      : Type(T), Predecessor(Pred) {}

  void print(raw_ostream &OS) const;
};

/**
 * @brief The main PathExpr variant that holds one of the above types.
 */
struct PathExpr {
  std::variant<EdgeExpr, UnionExpr, ConcatExpr, SpecialExpr> V;

  PathExpr(const decltype(V) &val) : V(val) {}

  // Helper to print the expression recursively.
  void print(raw_ostream &OS) const {
    std::visit([&OS](auto &&arg) { arg.print(OS); }, V);
  }
};

//-----------------------------------------------------------------------------
/**
 * @brief Implements the algorithm from "Efficient Building and Placing of Gating Functions" by Tu and Padua.
 */
class PHIGateAnalyzer {
public:
  /**
   * @brief Result structure for a basic block that needs a gating function.
   */
  struct GateInfo {
    // The final gating path expression, representing the gamma-function.
    std::shared_ptr<PathExpr> GammaFunction;
    // The path expression for the loop-carried value, for mu-functions.
    std::shared_ptr<PathExpr> MuFunction;

    void print(raw_ostream &OS) const {
      if (GammaFunction) {
        OS << "  Gamma: ";
        GammaFunction->print(OS);
        OS << "\n";
      }
      if (MuFunction) {
        OS << "  Mu: ";
        MuFunction->print(OS);
        OS << "\n";
      }
    }
  };

  PHIGateAnalyzer(Function &F, DominatorTree &DT) : F(F), DT(DT) {}

  std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
  getGatesForAllPhis();

private:
  // --- Core Data Structures from the Paper ---

  /**
   * @brief Represents the forest for path compression (Tarjan's algorithm).
   * Maps a node to its parent in the disjoint-set forest.
   */
  DenseMap<DomTreeNode *, DomTreeNode *> Parent;
  /**
   * @brief The path expression from a node to its parent in the forest.
   */
  DenseMap<DomTreeNode *, std::shared_ptr<PathExpr>> R;

  /**
   * @brief GP(v): The gating path from idom(v) to v.
   */
  DenseMap<const BasicBlock *, std::shared_ptr<PathExpr>> GP;
  /**
   * @brief G*(v): The gating path for loop-carried values at v.
   */
  DenseMap<const BasicBlock *, std::shared_ptr<PathExpr>> G_star;
  /**
   * @brief Phi(v): Flag indicating if v needs a gating function.
   */
  DenseMap<const BasicBlock *, bool> NeedsPhi;
  /**
   * @brief X(v): Flag indicating if v is in the initial definition set.
   */
  DenseMap<const BasicBlock *, bool> IsInitialDef;

  // --- Algorithm Helper Functions ---

  // The core analysis engine.
  DenseMap<const BasicBlock *, GateInfo>
  run(const SmallPtrSet<const BasicBlock *, 8> &InitialDefs);

  void initialize(const SmallPtrSet<const BasicBlock *, 8> &InitialDefs);

  // Implements EVAL(e) from the paper using path compression.
  // Returns a pair: <NeedsPhi, PathExpression>
  std::pair<bool, std::shared_ptr<PathExpr>> EVAL(DomTreeNode *Node);

  // Implements LINK(u, v)
  void LINK(DomTreeNode *u, DomTreeNode *v);

  // Implements UPDATE(v, P)
  void UPDATE(DomTreeNode *v, std::shared_ptr<PathExpr> P);

  // Helper to find the root of a node in the forest.
  DomTreeNode *FIND(DomTreeNode *Node);

  // Helper to create a path expression for a single edge.
  std::shared_ptr<PathExpr> createEdgeExpr(const BasicBlock *From,
                                           const BasicBlock *To);

  // Helper to merge two path expressions with the union operator.
  std::shared_ptr<PathExpr> mergePaths(std::shared_ptr<PathExpr> P1,
                                       std::shared_ptr<PathExpr> P2);

  // New helper to resolve a PathExpr into a list of Value* gates.
  void collectGates(std::shared_ptr<PathExpr> Expr,
                    SmallVectorImpl<const Value *> &Gates,
                    SmallPtrSetImpl<const Value *> &Visited) const;

  void addBranchGate(const Value *Branch, SmallVectorImpl<const Value *> &Gates,
                     SmallPtrSetImpl<const Value *> &Visited) const;

  Function &F;
  DominatorTree &DT;
};

} // namespace llvm

#endif // PHI_GATE_ANALYZER_H