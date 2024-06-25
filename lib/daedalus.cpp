#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/NativeFormatting.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <memory>

using namespace llvm;
#include <llvm/Pass.h>

#define DEBUG_TYPE "Daedalus"

// These Instructions types will not be a slice criterion.
bool canSliceInstrType(Instruction &I) {
    if (isa<BranchInst>(I)) return false; // Branch Instruction have badref
    if (isa<ReturnInst>(I)) return false;
    if (isa<AllocaInst>(I)) return false; // No needed
    if (isa<ICmpInst>(I)) return false;
    if (isa<LoadInst>(I)) return false;
    if (isa<StoreInst>(I)) return false;
    return true;
}

// Can be removed, if its on slice instruction set AND all
// uses can be removed,
bool tryRemoveInstruction(Instruction *I, std::set<Instruction *> &s,
                          std::map<Instruction *, bool> &instMap,
                          Instruction *ini) {
    if (s.find(I) == s.end()) {
        return false;
    }
    if (instMap[I]) return true;
    StringRef Iname = I->getName();
    for (auto U : I->users()) {
        if (Instruction *u = dyn_cast<Instruction>(U))
            if (!tryRemoveInstruction(u, s, instMap, ini)) {
                return false;
            }
        if (I->users().empty()) break;
    }
    instMap[I] = true;
    if (I != ini) I->eraseFromParent(), s.erase(I);
    return true;
}

bool meetCriterion(Function *F, Instruction *I) {
    if (F->getName() != "f") return 0;
    if (I->hasName() && (I->getName() != "add9")) return 0;
    return 1;
}

struct iSlice {
    Instruction *I;
    Function *F;
    SmallVector<Value *> args;
};

namespace Daedalus {

PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {
    std::set<Function *> FtoMap;
    std::vector<iSlice> allSlices;
    for (Function &F : M.getFunctionList()) FtoMap.insert(&F);

    std::unique_ptr<Module> module =
        std::make_unique<Module>("New_" + M.getName().str(), M.getContext());

    for (Function *F : FtoMap) {

        PostDominatorTree PDT;
        PDT.recalculate(*F);

        std::set<Instruction *> S;
        for (Instruction &I : instructions(F)) S.insert(&I);

        /// To replace all uses of I with the correpondent call
        for (Instruction *I : S) {
            if (!canSliceInstrType(*I)) continue;
            if (!meetCriterion(F, I)) continue;

            ProgramSlice ps = ProgramSlice(*I, *F, PDT);
            if (!ps.canOutline()) continue;

            Function *G = ps.outline();
            SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();

            iSlice slice = {I, G, funcArgs};
            allSlices.push_back(slice);
        }
        dbgs() << "new F:\n" << *F << '\n';
    }
    // TODO: Try to merge, if cant merge, delete the functions.
    // > let on allSlices, only the slice that is worth to merge.
    // ...
    //
    //
    //
    

    // TODO: Substitute on original func
    // Check instruction with attribute and
    
    

    module->print(dbgs(), nullptr);

    return PreservedAnalyses::none();
}
} // namespace Daedalus
