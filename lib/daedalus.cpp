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
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <memory>

using namespace llvm;
#include <llvm/Pass.h>

#define DEBUG_TYPE "Daedalus"

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
// if number of remove instructions is < total instructial / 2 => not worth ? is this true, after merge?
bool tryRemoveInstruction(Instruction *I, std::map<Instruction *, bool> &s,
                          Instruction *ini) {
    // dbgs() << "In: " << *I << '\n';
    if (s.find(I) == s.end()) {
        // dbgs() << "Not in slice\n";
        return false;
    }
    if (s[I]) return true;
    StringRef Iname = I->getName();
    for (auto U : I->users()) {
        dbgs() << "U: " << *U << '\n';
        if (Instruction *u = dyn_cast<Instruction>(U))
            if (!tryRemoveInstruction(u, s, ini)) {
                return false;
            }
	if(I->users().empty()) break;
    }
    // dbgs() << "Removing: " << Iname << '\n';
    s[I] = true;
    if (I != ini) I->eraseFromParent(), s.erase(I);
    // dbgs() << "Removed!: " << Iname << '\n';
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
        for (Instruction &I : instructions(F)) s.insert(&I);

        /// To replace all uses of I with the correpondent call
        std::map<Instruction *, CallInst *> ItoCall;
        std::map<Value *, Argument *> ArgtoArgcall;
        std::vector<Argument *> clearMemoryArgs;
        // TODO: Reoorganize everythign:
        // -- [ ] Set slice criterios for slices
        // -- [ ] Modularize search
        // -- [ ] Remove mainFlag
        bool mainFlag = 0;
        for (Instruction *I : s) {
            if (!canSliceInstrType(*I)) continue;
            if (mainFlag) break;
	    // if(F->getName() != "main") continue;
            if (I->getName() != "add9") continue; // TODO: define a criterio
            mainFlag = true;

            // LLVM_DEBUG(dbgs() << "\n Slicing Instruction: " << *I << '\n');
            ProgramSlice ps = ProgramSlice(*I, *F, PDT);
            if (!ps.canOutline()) continue;

            // LLVM_DEBUG(dbgs() << "\n Outlining instruction : " << *I <<
            // '\n');
            Function *G = ps.outline();
            // LLVM_DEBUG(dbgs() << " === Outlined Funcion === \n" << *G <<
            // '\n');

            // LLVM_DEBUG(dbgs()
            //            << "\n Making Function call to Instruction Slice: " <<
            //            *I
            //            << '\n');
            SmallVector<Value *> v = ps.getOrigFunctionArgs();

            /// Vector of Argument to pass to the callInst
            SmallVector<Value *> arr;

            /// If some futher instruction use this instruction as an argument,
            /// subtitute this argument with the call.
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

            // Create callInst to the outlined slice, and move it next to the
            // original Func
            CallInst *callInst =
                CallInst::Create(G, arr, I->getName(), I->getParent());
            callInst->moveAfter(I);
            ItoCall[I] = callInst;

            Argument *arg = new Argument(I->getType(), I->getName());
            std::shared_ptr<Argument> arg3 =
                std::make_shared<Argument>(I->getType(), I->getName());
            Argument *argcall =
                new Argument(callInst->getType(), callInst->getName());
            ArgtoArgcall[arg] = argcall;
            clearMemoryArgs.push_back(arg);

            // TODO: Can be removed, if its on slice instruction set AND all
            // uses can be removed,
            //
            // dbgs() << "USES\n";
            // for (auto K : I->users()) {
            //     auto L = dyn_cast<Instruction>(K);
            //     dbgs() << *L << '\n';
            // }

            I->replaceAllUsesWith(callInst);
            I->eraseFromParent();
            s.erase(I);

            auto K = ps.getInstructionInSlice();
            std::map<Instruction *, bool> mutInstructSet;
            for (auto &I : K)
                for (auto J : s)
                    if (I == J) mutInstructSet.insert({J, false});
            // TODO: Clean all these debugs
            // dbgs() << "MS_set:\n";
            // for (auto [K, k] : mutInstructSet) {
            //     if (K->getParent() == nullptr) dbgs() << "NULLPTR\n";
            //     dbgs() << *K << '\n';
            // }
            //
            // dbgs() << "F: " << *F << '\n';
            for (auto [J, j] : mutInstructSet) {
                // dbgs() << "======== try remove " << *J << "==========\n";
                if (!j) {
                    bool result = tryRemoveInstruction(J, mutInstructSet, I);
                    // if (!result)
                    //     dbgs()
                    //         << "======== not removed " << *J << "==========\n";
                    // else
                    //     dbgs() << "============ REMOVED =============\n";
                }
		if(mutInstructSet.empty()) break;
                // dbgs() << "NEW mutSet \t" << mutInstructSet.size() << '\n';
                // for (auto [L, l] : mutInstructSet) {
                //     dbgs() << *L << '\n';
                // }
            }
            // dbgs() << "OUT\n";
            dbgs() << "newF\n" << *F << '\n';
            dbgs() << *G << '\n';
            // TODO: After set the criterio will not be necessary check badref
            // anymore.
            // dbgs() << "S: \n";
            // for (auto [J, j] : mutInstructSet) {
            //     if (j) {
            //         dbgs() << "BADREF\n";
            //         s.erase(J);
            //     } else
            //         dbgs() << *J << '\n';
            // }

            //          for (auto X : K) {
            //              dbgs() << "Instruction: " << *X << '\n';
            //              bool flag = false;
            //              dbgs() << "Usos:\n";
            //              for (auto *x : X->users()) {
            //                  dbgs() << '\t' << *x << '\n';
            //                  /// If the use of instruction is not in the set
            //                  of
            //                  /// instruction of the slice, so we cant remove
            //                  it! if (const Instruction *Kx =
            //                  dyn_cast<Instruction>(x)) {
            //                      if (K.find(Kx) == K.end()) {
            //                          flag = true;
            //                          break;
            //                      }
            //                  }
            //              }
            //              if (!flag) {
            //    for(auto &e: s){
            // if(e == X){
            //     // e->eraseFromParent();
            // }
            //    }
            //              }
            //          }
        }
        // dbgs() << "Before: \n" << *F << '\n';
        // for (auto [I, callInst] : ItoCall) {
        //     I->replaceAllUsesWith(callInst);
        //     I->eraseFromParent();
        // }
        // dbgs() << "After: \n" << *F << '\n';
        // for (auto [e, f] : ArgtoArgcall) delete (f);
        // for (auto e : clearMemoryArgs) delete e;
    }
    module->print(dbgs(), nullptr);

    return PreservedAnalyses::none();
}
} // namespace Daedalus
