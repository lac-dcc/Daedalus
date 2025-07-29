#include "../include/PHIGateAnalyzer.h"
#include "llvm/ADT/PostOrderIterator.h"

#include <vector>

using namespace llvm;

void EdgeExpr::print(raw_ostream &OS) const {
  OS << "Edge(" << Branch->getParent()->getName() << " -> " << SuccessorIndex
     << ")";
}

void UnionExpr::print(raw_ostream &OS) const {
  OS << "(";
  Lhs->print(OS);
  OS << " U ";
  Rhs->print(OS);
  OS << ")";
}

void ConcatExpr::print(raw_ostream &OS) const {
  OS << "(";
  Lhs->print(OS);
  OS << " . ";
  Rhs->print(OS);
  OS << ")";
}

void SpecialExpr::print(raw_ostream &OS) const {
  if (Type == SpecialExprType::Lambda) {
    OS << "Lambda";
    if (Predecessor) {
      OS << "[pred:" << Predecessor->getName() << "]";
    }
  } else {
    OS << "Empty";
  }
}

void PHIGateAnalyzer::initialize(
    const SmallPtrSet<const BasicBlock *, 8> &InitialDefs) {
  // Clear all data structures for a fresh run.
  Parent.clear();
  R.clear();
  GP.clear();
  G_star.clear();
  NeedsPhi.clear();
  IsInitialDef.clear();

  for (auto const &BB : F) {
    DomTreeNode *Node = DT.getNode(&BB);
    if (!Node) continue;

    // Initially, each node is in its own set in the forest.
    Parent[Node] = Node;
    // No path from a node to itself initially.
    R[Node] = std::make_shared<PathExpr>(SpecialExpr(SpecialExprType::Empty));

    GP[&BB] = std::make_shared<PathExpr>(SpecialExpr(SpecialExprType::Empty));
    G_star[&BB] =
        std::make_shared<PathExpr>(SpecialExpr(SpecialExprType::Empty));
    NeedsPhi[&BB] = false;
    IsInitialDef[&BB] = InitialDefs.count(&BB);
  }
}

std::shared_ptr<PathExpr>
PHIGateAnalyzer::createEdgeExpr(const BasicBlock *From, const BasicBlock *To) {
  const Instruction *TI = From->getTerminator();
  if (TI->getNumSuccessors() == 1) {
    return std::make_shared<PathExpr>(
        SpecialExpr(SpecialExprType::Lambda, From));
  }

  for (unsigned i = 0; i < TI->getNumSuccessors(); ++i) {
    if (TI->getSuccessor(i) == To) {
      return std::make_shared<PathExpr>(EdgeExpr(TI, i));
    }
  }
  // Should be unreachable for a valid CFG edge.
  return std::make_shared<PathExpr>(SpecialExpr(SpecialExprType::Empty));
}

std::shared_ptr<PathExpr>
PHIGateAnalyzer::mergePaths(std::shared_ptr<PathExpr> P1,
                            std::shared_ptr<PathExpr> P2) {
  if (std::get_if<SpecialExpr>(&P1->V) &&
      std::get<SpecialExpr>(P1->V).Type == SpecialExprType::Empty)
    return P2;
  if (std::get_if<SpecialExpr>(&P2->V) &&
      std::get<SpecialExpr>(P2->V).Type == SpecialExprType::Empty)
    return P1;

  return std::make_shared<PathExpr>(UnionExpr(P1, P2));
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
    // R(v) = R(parent(v)) . R(v)
    R[Current] =
        std::make_shared<PathExpr>(ConcatExpr(R[NextParent], R[Current]));
    Parent[Current] = Root;
    Current = NextParent;
  }
  return Root;
}

std::pair<bool, std::shared_ptr<PathExpr>>
PHIGateAnalyzer::EVAL(DomTreeNode *Node) {
  FIND(Node); // Perform path compression

  // The paper's EVAL also checks the Phi/X flags along the path.
  // This is implicitly handled by the path compression in FIND.
  // We check the flags on the compressed path.
  bool needsPhi = false;
  DomTreeNode *Current = Node;

  while (Parent[Current] != Current) {
    needsPhi |=
        NeedsPhi[Current->getBlock()] || IsInitialDef[Current->getBlock()];
    Current = Parent[Current];
  }
  // Check the root as well
  needsPhi |=
      NeedsPhi[Current->getBlock()] || IsInitialDef[Current->getBlock()];

  return {needsPhi, R[Node]};
}

void PHIGateAnalyzer::LINK(DomTreeNode *u, DomTreeNode *v) {
  // Make u the parent of v
  Parent[v] = u;
}

void PHIGateAnalyzer::UPDATE(DomTreeNode *vNode, std::shared_ptr<PathExpr> P) {
  // R(v) = P
  R[vNode] = P;
}

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
    std::shared_ptr<PathExpr> Expr, SmallVectorImpl<const Value *> &Gates,
    SmallPtrSetImpl<const Value *> &Visited) const {

  // Prevent infinite recursion on cyclic path expressions
  static thread_local SmallPtrSet<const PathExpr *, 16> VisitedExprs;

  if (!Expr || !VisitedExprs.insert(Expr.get()).second) return;

  std::visit(
      [&](const auto &arg) {
        using T = std::decay_t<decltype(arg)>;

        if constexpr (std::is_same_v<T, EdgeExpr>) {
          addBranchGate(arg.Branch, Gates, Visited);
        } else if constexpr (std::is_same_v<T, UnionExpr> ||
                             std::is_same_v<T, ConcatExpr>) {
          collectGates(arg.Lhs, Gates, Visited);
          collectGates(arg.Rhs, Gates, Visited);
        } else if constexpr (std::is_same_v<T, SpecialExpr>) {
          // ~secial case~ The paper assumes that SpecialExpr is an
          // unconditional branch, then a lambda expression is set with the
          // controlling predecessor. But we want to propagate the gate of that
          // predecessor, so we collect the predecessor's gates.
          if (arg.Type == SpecialExprType::Lambda && arg.Predecessor) {
            collectGates(GP.lookup(arg.Predecessor), Gates, Visited);
          }
        }
      },
      Expr->V);

  VisitedExprs.erase(Expr.get());
}

std::unordered_map<const BasicBlock *, SmallVector<const Value *>>
PHIGateAnalyzer::getGatesForAllPhis() {

  // To get the most detailed path expressions for all nodes, we can treat
  // every block as being part of the initial definition set. This forces
  // the algorithm to preserve complex path expressions everywhere.
  SmallPtrSet<const BasicBlock *, 8> allBlocks;
  for (const auto &BB : F) {
    allBlocks.insert(&BB);
  }

  // Run the core analysis. The result identifies blocks in the dominance
  // frontier of our initial set, but more importantly, it populates the
  // GP and G_star maps for all nodes.
  DenseMap<const BasicBlock *, PHIGateAnalyzer::GateInfo> result =
      run(allBlocks);

  for (const auto &entry : result) {
    const BasicBlock *BB = entry.first;
    const auto &GI = entry.second;
    dbgs() << "Block: " << BB->getName() << "\n";
    dbgs() << "  Gamma: ";
    if (GI.GammaFunction)
      GI.GammaFunction->print(dbgs());
    else
      dbgs() << "(none)";
    dbgs() << "\n";
    dbgs() << "  Mu: ";
    if (GI.MuFunction)
      GI.MuFunction->print(dbgs());
    else
      dbgs() << "(none)";
    dbgs() << "\n";
  }

  // Now, resolve the symbolic path expressions into concrete Value* gates.
  std::unordered_map<const BasicBlock *, SmallVector<const Value *>> AllGates;

  for (const auto &BB : F) {
    // We are interested in any block that is a merge point and has a PHI node.
    if (BB.hasNPredecessors(0)) {
      continue;
    }

    SmallVector<const Value *> GatesForBlock;
    SmallPtrSet<const Value *, 4> VisitedGates;

    // Collect gates from the gamma function (non-loop paths)
    if (GP.count(&BB)) {
      collectGates(GP.lookup(&BB), GatesForBlock, VisitedGates);
    }
    // Collect gates from the mu function (loop-carried paths)
    if (G_star.count(&BB)) {
      collectGates(G_star.lookup(&BB), GatesForBlock, VisitedGates);
    }

    if (!GatesForBlock.empty()) {
      AllGates[&BB] = GatesForBlock;
    }
  }

  return AllGates;
}

DenseMap<const BasicBlock *, PHIGateAnalyzer::GateInfo>
PHIGateAnalyzer::run(const SmallPtrSet<const BasicBlock *, 8> &InitialDefs) {

  initialize(InitialDefs);

  // The algorithm processes nodes in reverse depth-first order of the dominator
  // tree. LLVM's PostOrderIterator on the dominator tree gives us a reverse
  // topological sort, which is exactly what we need (children are visited
  // before their parents).
  ReversePostOrderTraversal<DomTreeNode *> RPO(DT.getRootNode());

  for (DomTreeNode *uNode : RPO) {
    if (!uNode) continue;

    // --- DERIVE PHASE ---
    // For each child v of u, compute incoming path expressions.
    DenseMap<
        const BasicBlock *,
        std::vector<std::pair<const BasicBlock *, std::shared_ptr<PathExpr>>>>
        ListP;

    for (auto const &ChildNode : *uNode) {
      const BasicBlock *v = ChildNode->getBlock();
      for (const BasicBlock *w : predecessors(v)) {
        DomTreeNode *wNode = DT.getNode(w);
        if (!wNode) continue;

        // Case 1: Edge is from the immediate dominator u.
        if (wNode == uNode) {
          GP[v] = mergePaths(GP[v], createEdgeExpr(w, v));
        }
        // Case 2 & 3: Edge is from a sibling's subtree or a loop back-edge.
        else {
          auto [phi, path] = EVAL(wNode);
          NeedsPhi[v] |= phi;

          // The root of the subtree w belongs to.
          DomTreeNode *subrootW = FIND(wNode);

          // Concatenate the edge from w to v.
          auto edgePath = createEdgeExpr(w, v);
          auto fullPath =
              std::make_shared<PathExpr>(ConcatExpr(path, edgePath));

          // Check for loop back-edge (v dominates w)
          if (DT.dominates(v, w)) {
            G_star[v] = mergePaths(G_star[v], fullPath);
          } else {
            ListP[v].push_back({subrootW->getBlock(), fullPath});
          }
        }
      }
    }

    // --- MERGE PHASE ---
    // Process children in a topological order of the dependencies between them.
    // For simplicity, we iterate multiple times until all paths are resolved.
    // A true implementation would build a dependency graph and topsort it.
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
            // GP(v) = GP(v) U (GP(subrootW) . p(subrootW, v))
            auto newPath =
                std::make_shared<PathExpr>(ConcatExpr(GP[subrootW], path));
            auto oldGP = GP[v];
            GP[v] = mergePaths(GP[v], newPath);
            // A simple pointer comparison to check if mergePaths created a new
            // object.
            if (oldGP.get() != GP[v].get()) {
              changed = true;
            }
            it = predPaths.erase(it);
          }
        }
      }
    }

    // --- UPDATE and LINK PHASE ---
    for (auto const &ChildNode : *uNode) {
      // The `NeedsPhi` flag is determined by the dominance frontier
      // relationship. We update R(v) with the full path expression to ensure
      // subsequent EVAL calls get the most detailed information.
      UPDATE(ChildNode, GP[ChildNode->getBlock()]);
      LINK(uNode, ChildNode);
    }
  }

  // --- Final Result Collection ---
  DenseMap<const BasicBlock *, GateInfo> Results;
  for (auto const &BB : F) {
    if (NeedsPhi[&BB]) {
      GateInfo GI;
      GI.GammaFunction = GP[&BB];
      // Check if a mu-function was also created
      if (auto *se = std::get_if<SpecialExpr>(&G_star[&BB]->V);
          !se || se->Type != SpecialExprType::Empty) {
        GI.MuFunction = G_star[&BB];
      }
      Results[&BB] = GI;
    }
  }

  return Results;
}