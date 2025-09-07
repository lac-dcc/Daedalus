#include "../include/PHIGateAnalyzer.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Support/Debug.h"

#include <vector>

#define DEBUG_TYPE "PHIGateAnalyzer"

using namespace llvm;

void PHIGateAnalyzer::initialize(
    const SmallPtrSet<const BasicBlock *, 8> &InitialDefs) {
  // Clear all data structures
  Parent.clear();
  R.clear();
  GP.clear();
  G_star.clear();
  NeedsPhi.clear();
  IsInitialDef.clear();

  for (auto const &BB : F) {
    DomTreeNode *Node = DT.getNode(&BB);
    if (!Node) continue;

    Parent[Node] = Node;
    R[Node] = PathExpr::createEmpty();
    GP[&BB] = PathExpr::createEmpty();
    G_star[&BB] = PathExpr::createEmpty();
    NeedsPhi[&BB] = false;
    IsInitialDef[&BB] = InitialDefs.count(&BB);
  }
}

PathExpr *PHIGateAnalyzer::createEdgeExpr(const BasicBlock *From,
                                          const BasicBlock *To) {
  const Instruction *TI = From->getTerminator();
  if (TI->getNumSuccessors() == 1) {
    return PathExpr::createLambda(From);
  }

  for (unsigned i = 0; i < TI->getNumSuccessors(); ++i) {
    if (TI->getSuccessor(i) == To) {
      return PathExpr::createEdge(TI, i);
    }
  }
  return PathExpr::createEmpty();
}

PathExpr *PHIGateAnalyzer::mergePaths(PathExpr *P1, PathExpr *P2) {
  if (P1->Type == PathExpr::EMPTY) return P2;
  if (P2->Type == PathExpr::EMPTY) return P1;
  return PathExpr::createUnion(P1, P2);
}

DomTreeNode *PHIGateAnalyzer::FIND(DomTreeNode *Node) {
  DomTreeNode *P = Parent[Node];
  if (P == Node) {
    return Node;
  }

  // Path Compression
  DomTreeNode *Root = FIND(P);
  DomTreeNode *Current = Node;
  while (Parent[Current] != Root) {
    DomTreeNode *NextParent = Parent[Current];
    R[Current] = PathExpr::createConcat(R[NextParent], R[Current]);
    Parent[Current] = Root;
    Current = NextParent;
  }
  return Root;
}

std::pair<bool, PathExpr *> PHIGateAnalyzer::EVAL(DomTreeNode *Node) {
  FIND(Node); // Perform path compression

  bool needsPhi = false;
  DomTreeNode *Current = Node;

  while (Parent[Current] != Current) {
    needsPhi |=
        NeedsPhi[Current->getBlock()] || IsInitialDef[Current->getBlock()];
    Current = Parent[Current];
  }
  needsPhi |=
      NeedsPhi[Current->getBlock()] || IsInitialDef[Current->getBlock()];

  return {needsPhi, R[Node]};
}

void PHIGateAnalyzer::LINK(DomTreeNode *u, DomTreeNode *v) { Parent[v] = u; }

void PHIGateAnalyzer::UPDATE(DomTreeNode *vNode, PathExpr *P) { R[vNode] = P; }

void PHIGateAnalyzer::addBranchGate(
    const Value *Branch, SmallVectorImpl<const Value *> &Gates,
    SmallPtrSetImpl<const Value *> &Visited) const {
  if (!Visited.insert(Branch).second) return;

  if (const auto *BI = dyn_cast<BranchInst>(Branch)) {
    if (BI->isConditional()) {
      Gates.push_back(BI);
    }
  } else if (const auto *SI = dyn_cast<SwitchInst>(Branch)) {
    Gates.push_back(SI);
  }
}

void PHIGateAnalyzer::collectGates(
    PathExpr *Expr, SmallVectorImpl<const Value *> &Gates,
    SmallPtrSetImpl<const Value *> &Visited) const {
  if (!Expr) return;

  // Simple recursion guard
  static thread_local SmallPtrSet<const PathExpr *, 16> VisitedExprs;
  if (!VisitedExprs.insert(Expr).second) return;

  switch (Expr->Type) {
  case PathExpr::EDGE:
    addBranchGate(Expr->Branch, Gates, Visited);
    break;
  case PathExpr::UNION:
  case PathExpr::CONCAT:
    collectGates(Expr->Lhs, Gates, Visited);
    collectGates(Expr->Rhs, Gates, Visited);
    break;
  case PathExpr::LAMBDA:
    // ~special case~ The paper assumes that SpecialExpr is an
    // unconditional branch, then a lambda expression is set with the
    // controlling predecessor. But we want to propagate the gate of that
    // predecessor, so we collect the predecessor's gates.
    if (Expr->Predecessor) {
      collectGates(GP.lookup(Expr->Predecessor), Gates, Visited);
    }
    break;
  case PathExpr::EMPTY:
    break;
  }

  VisitedExprs.erase(Expr);
}

std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
PHIGateAnalyzer::getGatesForAllPhis() {
  // To get the most detailed path expressions for all nodes, we can treat
  // every block as being part of the initial definition set. This forces
  // the algorithm to preserve complex path expressions everywhere.
  SmallPtrSet<const BasicBlock *, 8> InitialDefs;
  for (auto const &BB : F) {
    InitialDefs.insert(&BB);
  }

  initialize(InitialDefs);

  // Process nodes in reverse depth-first order
  ReversePostOrderTraversal<DomTreeNode *> RPO(DT.getRootNode());

  for (DomTreeNode *uNode : RPO) {
    if (!uNode) continue;

    // DERIVE PHASE
    DenseMap<const BasicBlock *,
             std::vector<std::pair<const BasicBlock *, PathExpr *>>>
        ListP;

    for (auto const &ChildNode : *uNode) {
      const BasicBlock *v = ChildNode->getBlock();
      for (const BasicBlock *w : predecessors(v)) {
        DomTreeNode *wNode = DT.getNode(w);
        if (!wNode) continue;

        if (wNode == uNode) {
          GP[v] = mergePaths(GP[v], createEdgeExpr(w, v));
        } else {
          auto [phi, path] = EVAL(wNode);
          NeedsPhi[v] |= phi;

          DomTreeNode *subrootW = FIND(wNode);
          auto edgePath = createEdgeExpr(w, v);
          auto fullPath = PathExpr::createConcat(path, edgePath);

          if (DT.dominates(v, w)) {
            G_star[v] = mergePaths(G_star[v], fullPath);
          } else {
            ListP[v].push_back({subrootW->getBlock(), fullPath});
          }
        }
      }
    }

    // MERGE PHASE
    bool changed = true;
    int pass = 0;
    const int maxPasses = uNode->getNumChildren() + 1;

    while (changed && pass++ < maxPasses) {
      changed = false;
      for (auto const &ChildNode : *uNode) {
        const BasicBlock *v = ChildNode->getBlock();
        if (ListP.count(v)) {
          auto &predPaths = ListP[v];
          for (auto it = predPaths.begin(); it != predPaths.end();) {
            auto &[subrootW, path] = *it;
            auto newPath = PathExpr::createConcat(GP[subrootW], path);
            auto oldGP = GP[v];
            GP[v] = mergePaths(GP[v], newPath);
            if (oldGP != GP[v]) {
              changed = true;
            }
            it = predPaths.erase(it);
          }
        }
      }
    }

    // UPDATE and LINK PHASE
    for (auto const &ChildNode : *uNode) {
      UPDATE(ChildNode, GP[ChildNode->getBlock()]);
      LINK(uNode, ChildNode);
    }
  }

  // Debug output for path expressions
  LLVM_DEBUG({
    for (const auto &BB : F) {
      if (NeedsPhi[&BB]) {
        dbgs() << "Block: " << BB.getName() << "\n";
        dbgs() << "  Gamma: ";
        if (GP[&BB] && GP[&BB]->Type != PathExpr::EMPTY)
          GP[&BB]->print(dbgs());
        else
          dbgs() << "(none)";
        dbgs() << "\n";
        dbgs() << "  Mu: ";
        if (G_star[&BB] && G_star[&BB]->Type != PathExpr::EMPTY)
          G_star[&BB]->print(dbgs());
        else
          dbgs() << "(none)";
        dbgs() << "\n";
      }
    }
  });

  // Collect gates
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> AllGates;

  for (const auto &BB : F) {
    if (BB.hasNPredecessors(0)) continue;

    SmallVector<const Value *> GatesForBlock;
    SmallPtrSet<const Value *, 4> VisitedGates;

    // Collect from both GP and G_star
    if (GP.count(&BB)) {
      collectGates(GP.lookup(&BB), GatesForBlock, VisitedGates);
    }
    if (G_star.count(&BB)) {
      collectGates(G_star.lookup(&BB), GatesForBlock, VisitedGates);
    }

    if (!GatesForBlock.empty()) {
      AllGates[&BB] = GatesForBlock;
    }
  }

  return AllGates;
}