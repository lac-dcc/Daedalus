#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"
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

bool canOutline(Instruction &I) {
    if (isa<BranchInst>(I)) return false; // Branch Instruction have badref
    if (isa<ReturnInst>(I)) return false; // No Return for while, badref
    if (isa<AllocaInst>(I)) return false; // No needed
    if (isa<StoreInst>(I)) return false;  // No needed
    // if (isa<GetElementPtrInst>(I)) return false; // No needed
    if (isa<PHINode>(I)) return false;           // No needed
	if (isa<LoadInst>(I)) return false;
    return true;
}

namespace Daedalus {

uint sliceFunctionSize(Function *F, std::set<CallInst *> context) {
    uint ans = 0;
    for (auto &I : instructions(F)) {
        if (CallInst *K = dyn_cast<CallInst>(&I)){
	    if(context.find(K) == context.end()){
		context.insert(K);
		ans += sliceFunctionSize(K->getCalledFunction(), context);
		continue;
	    }
	}
        ++ans;
    }
    return ans;
}

PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {

    std::unordered_map<Instruction *, Function *> instr_Func;

    std::set<Function *> FtoMap;
    for (Function &F : M.getFunctionList()) FtoMap.insert(&F);

    std::unique_ptr<Module> module =
        std::make_unique<Module>("New_" + M.getName().str(), M.getContext());
    for (Function *F : FtoMap) {

        PostDominatorTree PDT;
        PDT.recalculate(*F);
        int i = 0;

        std::set<Instruction *> s;
        std::map<Instruction *, CallInst *> ItoCall;
        std::map<Value *, Argument *> ArgtoArgcall;

        for (Instruction &I : instructions(F)) {
            s.insert(&I);
        }
        for (Instruction *I : s) {
            if (!canOutline(*I)) continue;
	//    LLVM_DEBUG(dbgs() << "\n SLICING: " << *I << '\n');
            ProgramSlice ps = ProgramSlice(*I, *F, PDT);

	  //  LLVM_DEBUG(dbgs() << "\n OUTLING: " << *I << '\n');
            auto [dps, G] = ps.outline();
	  //  dbgs() << "ENDF\n" << *G << '\n';

	    std::set<CallInst *> context;
	   // LLVM_DEBUG(dbgs() << "SLICE SIZE = " << sliceFunctionSize(G, context) << '\n');

	    // LLVM_DEBUG(dbgs() << "\n CALLS FOR SLICE: " << *I << '\n');
            SmallVector<Value *> v = ps.getOrigFunctionArgs();
            SmallVector<Value *> arr;
            for (auto &e : v) {
                auto it = ArgtoArgcall.find(e);
                if (it != ArgtoArgcall.end()) {
                    e = it->second;
                }
            }
            for (auto &e : v) {
                uint flag = 0;
                for (Instruction *K : s) {
                    if (e->getName() == K->getName()) {
                        arr.push_back(K);
                        flag = 1;
                        break;
                    }
                }
                if (!flag) arr.push_back(e);
            }

            CallInst *callInst =
                CallInst::Create(G, arr, I->getName(), I->getParent());
            callInst->moveAfter(I);
            ItoCall[I] = callInst;

            Argument *arg = new Argument(I->getType(), I->getName());
            Argument *argcall =
                new Argument(callInst->getType(), callInst->getName());
            ArgtoArgcall[arg] = argcall;
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
