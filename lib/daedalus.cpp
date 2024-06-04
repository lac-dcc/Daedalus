#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <fstream>
#include <memory>

using namespace llvm;
#include <llvm/Pass.h>

bool canSliceInstrType(Instruction &I) {
    // These Instruction will not be a slice criterion.
    if (isa<BranchInst>(I)) return false; // Branch Instruction have badref
    if (isa<ReturnInst>(I)) return false;
    if (isa<AllocaInst>(I)) return false; // No needed
    if (isa<ICmpInst>(I)) return false;
    if (isa<LoadInst>(I)) return false;
    if (isa<StoreInst>(I)) return false;
    return true;
}

namespace Daedalus {

PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {

    std::unordered_map<Instruction *, Function *> instr_Func;

    std::set<Function *> FtoMap;
    for (Function &F : M.getFunctionList()) FtoMap.insert(&F);

    std::unique_ptr<Module> module =
        std::make_unique<Module>("New_" + M.getName().str(), M.getContext());
    for (Function *F : FtoMap) {

        PostDominatorTree PDT;
        PDT.recalculate(*F);

        std::set<Instruction *> s;
        /// To replace all uses of I with the correpondent call
        std::map<Instruction *, CallInst *> ItoCall;
        std::map<Value *, Argument *> ArgtoArgcall;

        for (Instruction &I : instructions(F)) s.insert(&I);

        for (Instruction *I : s) {
            if (!canSliceInstrType(*I)) continue;

            LLVM_DEBUG(dbgs() << "\n Slicing Instruction: " << *I << '\n');
            ProgramSlice ps = ProgramSlice(*I, *F, PDT);
            if (!ps.canOutline()) continue;

            LLVM_DEBUG(dbgs() << "\n Outlining instruction : " << *I << '\n');
            auto [dps, G] = ps.outline();
            LLVM_DEBUG(dbgs() << " === Outlined Funcion === \n" << *G << '\n');

            LLVM_DEBUG(dbgs()
                       << "\n Making Function call to Instruction Slice: " << *I
                       << '\n');
            SmallVector<Value *> v = ps.getOrigFunctionArgs();

            /// Vector of Argument to pass to the callInst
            SmallVector<Value *> arr;

            for (auto &e : v) {
                auto it = ArgtoArgcall.find(e);
                if (it != ArgtoArgcall.end()) e = it->second;
            }
            for (auto &e : v) {
                bool flag = 0;
                for (Instruction *K : s) {
                    if (e->getName() == K->getName()) {
                        arr.push_back(K);
                        flag = 1;
                        break;
                    }
                }
                if (!flag) arr.push_back(e);
            }

           // if (ps._phiCrit) continue;

            // Create callInst to the outlined slice, and move it next to the
            // original Func
            CallInst *callInst =
                CallInst::Create(G, arr, I->getName(), I->getParent());
            callInst->moveAfter(I);
            ItoCall[I] = callInst;

            Argument *arg = new Argument(I->getType(), I->getName());
            Argument *argcall =
                new Argument(callInst->getType(), callInst->getName());
            ArgtoArgcall[arg] = argcall;
            LLVM_DEBUG(dbgs() << "\n Instruction Outlined: " << *I << '\n');
        }
        for (auto [I, callInst] : ItoCall) {
            I->replaceAllUsesWith(callInst);
            I->eraseFromParent();
        }
    }
    module->print(dbgs(), nullptr);

    return PreservedAnalyses::all();
}
} // namespace Daedalus
