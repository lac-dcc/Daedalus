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
namespace Daedalus {

PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {

    std::unordered_map<Instruction *, Function *> instr_Func;

    std::set<Function *> FtoMap;
    std::set<Function *> allSlices;
    for (Function &F : M.getFunctionList()) FtoMap.insert(&F);

    std::unique_ptr<Module> module =
        std::make_unique<Module>("New_" + M.getName().str(), M.getContext());


    for (Function *F : FtoMap) {

        PostDominatorTree PDT;
        PDT.recalculate(*F);

        std::set<Instruction *> S;
        for (Instruction &I : instructions(F)) S.insert(&I);

        /// To replace all uses of I with the correpondent call
        std::map<Instruction *, CallInst *> ItoCall;
        std::map<Value *, Argument *> ArgtoArgcall;
        std::vector<Argument *> clearMemoryArgs;
        // TODO: Reoorganize everythign:
        // -- [ ] Set slice criterios for slices
        // -- [ ] Modularize search
        for (Instruction *I : S) {
            if (!canSliceInstrType(*I)) continue;
            // if (F->getName() != "main") continue;
            // if (I->hasName() &&
            //     (I->getName() != "add9" && I->getName() != "mul8"))
            //     continue; // TODO: define a criterio

	    if(I->getName() == "add9") dbgs() << "INADD\n";
            ProgramSlice ps = ProgramSlice(*I, *F, PDT);
            if (!ps.canOutline()) continue;
	    dbgs() << "PASS ADD\n";

            Function *G = ps.outline();
            SmallVector<Value *> v = ps.getOrigFunctionArgs();

            /// Vector of Argument to pass to the callInst
            SmallVector<Value *> arr;

            /// If some futher instruction use this instruction as an argument,
            /// subtitute this argument with the call.
            for (auto &e : v) {
                auto it = ArgtoArgcall.find(e);
                if (it != ArgtoArgcall.end()) e = it->second;
            }

            // TODO: commnet
            for (auto &e : v) {
                bool flag = 0;
                for (Instruction *K : S) {
                    if (e->getName() == K->getName()) {
                        arr.push_back(K);
                        flag = 1;
                        break;
                    }
                }
                if (!flag) arr.push_back(e);
            }

            // Create callInst to the outlined slice, and move it next to the
            // original Func
            CallInst *callInst =
                CallInst::Create(G, arr, I->getName(), I->getParent());
            callInst->moveAfter(I);
            ItoCall[I] = callInst;

            // TODO: commnet
            Argument *arg = new Argument(I->getType(), I->getName());
            std::shared_ptr<Argument> arg3 =
                std::make_shared<Argument>(I->getType(), I->getName());
            Argument *argcall =
                new Argument(callInst->getType(), callInst->getName());
            ArgtoArgcall[arg] = argcall;
            clearMemoryArgs.push_back(arg);

            I->replaceAllUsesWith(callInst);
            // I->eraseFromParent();
            // S.erase(I);

            // std::set<const Instruction *> constOriginalInstructions =
            //     ps.getInstructionInSlice();
            //
            // // Fast check if Instrction was removed, if it is, it must to be
            // // erase from s-set which we are interation over.
            // // TODO: This will not be necessary anymore after we have a
            // // criterion, cause we gonna iterate only over the instructions
            // // which will be an criterion, and all these will be removed.
            // std::map<Instruction *, bool> mutInstMap;
            // std::set<Instruction *> mutInstSet;
            //
            // // Make a mutable reference to the instruction on original function.
            // for (auto &I : constOriginalInstructions) {
            //     for (auto J : S)
            //         if (I == J) {
            //             mutInstMap.insert({J, false});
            //             mutInstSet.insert(J);
            //         }
            // }
            //
            // for (auto [J, isRemoved] : mutInstMap) {
            //     if (!isRemoved)
            //         tryRemoveInstruction(J, mutInstSet, mutInstMap, I);
            //     if (mutInstMap.empty()) break;
            // }
            //
            // // If instructionn was removed, erase it from the the iteration
            // // set.
            // for (auto J : S)
            //     if (mutInstMap[J]) S.erase(J);
            // dbgs() << *F << '\n';
            // dbgs() << "set S: " << S.size() << '\n';
            // for (auto J : S) dbgs() << '\t' << *J << '\n';
        }
        dbgs() << "new F:\n" << *F << '\n';

        /// These replace all Instruction with function calls.
        /// TODO: Only replace instruction which will be criterion after
        /// funcmerge

        // dbgs() << "Before: \n" << *F << '\n';
        // for (auto [I, callInst] : ItoCall) {
        //     I->replaceAllUsesWith(callInst);
        //     I->eraseFromParent();
        // }
        for (auto [e, f] : ArgtoArgcall) delete (f);
        for (auto e : clearMemoryArgs) delete e;
    }
    module->print(dbgs(), nullptr);

    return PreservedAnalyses::none();
}
} // namespace Daedalus
