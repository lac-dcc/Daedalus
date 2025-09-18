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

#include <unordered_map>

namespace llvm {

/**
 * @brief Simple path expression representation without variants
 */
struct PathExpr {
  enum ExprType {
    EDGE,
    UNION,
    CONCAT,
    LAMBDA,
    EMPTY
  } Type;
  
  // For EDGE
  const Instruction *Branch;
  unsigned SuccessorIndex;
  
  // For UNION/CONCAT
  PathExpr *Lhs;
  PathExpr *Rhs;
  
  // For LAMBDA
  const BasicBlock *Predecessor;
  
  PathExpr() : Type(EMPTY), Branch(nullptr), SuccessorIndex(0), Lhs(nullptr), Rhs(nullptr), Predecessor(nullptr) {}
  PathExpr(ExprType T) : Type(T), Branch(nullptr), SuccessorIndex(0), Lhs(nullptr), Rhs(nullptr), Predecessor(nullptr) {}
  
  ~PathExpr() {
    delete Lhs;
    delete Rhs;
  }
  
  static PathExpr* createEdge(const Instruction *branch, unsigned idx) {
    PathExpr *expr = new PathExpr(EDGE);
    expr->Branch = branch;
    expr->SuccessorIndex = idx;
    return expr;
  }
  
  static PathExpr* createUnion(PathExpr *lhs, PathExpr *rhs) {
    PathExpr *expr = new PathExpr(UNION);
    expr->Lhs = lhs;
    expr->Rhs = rhs;
    return expr;
  }
  
  static PathExpr* createConcat(PathExpr *lhs, PathExpr *rhs) {
    PathExpr *expr = new PathExpr(CONCAT);
    expr->Lhs = lhs;
    expr->Rhs = rhs;
    return expr;
  }
  
  static PathExpr* createLambda(const BasicBlock *pred = nullptr) {
    PathExpr *expr = new PathExpr(LAMBDA);
    expr->Predecessor = pred;
    return expr;
  }
  
  static PathExpr* createEmpty() {
    return new PathExpr(EMPTY);
  }
  
  void print(raw_ostream &OS) const {
    switch (Type) {
      case EDGE:
        OS << "Edge(" << Branch->getParent()->getName() << " -> " << SuccessorIndex << ")";
        break;
      case UNION:
        OS << "(";
        Lhs->print(OS);
        OS << " U ";
        Rhs->print(OS);
        OS << ")";
        break;
      case CONCAT:
        OS << "(";
        Lhs->print(OS);
        OS << " . ";
        Rhs->print(OS);
        OS << ")";
        break;
      case LAMBDA:
        OS << "Lambda";
        if (Predecessor) {
          OS << "[pred:" << Predecessor->getName() << "]";
        }
        break;
      case EMPTY:
        OS << "Empty";
        break;
    }
  }
};

/**
 * @brief Implements the algorithm from "Efficient Building and Placing of Gating Functions" by Tu and Padua.
 */
class PHIGateAnalyzer {
public:
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
  DenseMap<DomTreeNode *, PathExpr *> R;

  /**
   * @brief GP(v): The gating path from idom(v) to v.
   */
  DenseMap<const BasicBlock *, PathExpr *> GP;
  
  /**
   * @brief G*(v): The gating path for loop-carried values at v.
   */
  DenseMap<const BasicBlock *, PathExpr *> G_star;
  
  /**
   * @brief Phi(v): Flag indicating if v needs a gating function.
   */
  DenseMap<const BasicBlock *, bool> NeedsPhi;
  
  /**
   * @brief X(v): Flag indicating if v is in the initial definition set.
   */
  DenseMap<const BasicBlock *, bool> IsInitialDef;

  // --- Algorithm Helper Functions ---

  void initialize(const SmallPtrSet<const BasicBlock *, 8> &InitialDefs);

  // Implements EVAL(e) from the paper using path compression.
  // Returns a pair: <NeedsPhi, PathExpression>
  std::pair<bool, PathExpr *> EVAL(DomTreeNode *Node);

  // Implements LINK(u, v)
  void LINK(DomTreeNode *u, DomTreeNode *v);

  // Implements UPDATE(v, P)
  void UPDATE(DomTreeNode *v, PathExpr *P);

  // Helper to find the root of a node in the forest.
  DomTreeNode *FIND(DomTreeNode *Node);

  // Helper to create a path expression for a single edge.
  PathExpr *createEdgeExpr(const BasicBlock *From, const BasicBlock *To);

  // Helper to merge two path expressions with the union operator.
  PathExpr *mergePaths(PathExpr *P1, PathExpr *P2);

  // Helper to resolve a PathExpr into a list of Value* gates.
  void collectGates(PathExpr *Expr,
                    SmallVectorImpl<const Value *> &Gates,
                    SmallPtrSetImpl<const Value *> &Visited) const;

  void addBranchGate(const Value *Branch, SmallVectorImpl<const Value *> &Gates,
                     SmallPtrSetImpl<const Value *> &Visited) const;

  Function &F;
  DominatorTree &DT;
};

} // namespace llvm

#endif // PHI_GATE_ANALYZER_H