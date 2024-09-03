#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/NativeFormatting.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <exception>
#include <memory>

using namespace llvm;
#include <llvm/Pass.h>

#define DEBUG_TYPE "daedalus"

namespace COLOR {
const std::string RED = "\033[31m";
const std::string GREEN = "\033[32m";
const std::string CLEAN = "\033[0m";
}; // namespace COLOR

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

bool newRemover(Instruction *I, Instruction *ini,
                std::set<Instruction *> &constOriginalInst,
                std::set<Instruction *> &vis) {
    if (ini == I) return true;

    if (constOriginalInst.find(I) == constOriginalInst.end()) return false;

    if (vis.find(I) != vis.end()) return true;

    if (isa<GlobalValue>(I)) {
        return false;
    };

    if (I->isTerminator()) return false;

    vis.insert(I);

    for (auto U : I->users()) {
        if (!U || U->use_empty()) continue;
        if (Instruction *J = dyn_cast<Instruction>(U))
            if (!newRemover(J, ini, constOriginalInst, vis)) return false;
    }
    return true;
}

// Can be removed if: wasnt removed, its on slice instruction set AND all
// uses can be removed.
// bool tryRemoveInstruction(Instruction *I, std::set<Instruction *> &s,
//                           std::map<Instruction *, instState> &instMap,
//                           Instruction *ini) {
//     LLVM_DEBUG(dbgs() << *I << '\n');
//     if (I->getParent() == nullptr) {
//         LLVM_DEBUG(dbgs() << " parent is null \n");
//         instMap[I] = DELETED;
//         return true;
//     }
//     StringRef Iname = I->getName();
//     if (!I || instMap[I] == DELETED) {
//         LLVM_DEBUG(dbgs() << " inst deleted \n");
//         return true;
//     };
//     if (s.find(I) == s.end()) {
//         LLVM_DEBUG(dbgs() << " isnt on set \n");
//         return false;
//     }
//     if (instMap[I] == VISITED) {
//         LLVM_DEBUG(dbgs() << " already visited \n");
//         return true;
//     }
//     if (I->isTerminator()) {
//         LLVM_DEBUG(dbgs() << " is a terminator \n");
//         return false;
//     }
//
//     instMap[I] = VISITED;
//     std::set<User *> allUsers;
//     for (auto U : I->users()) allUsers.insert(U);
//
//     for (auto U : allUsers) {
//         // LLVM_DEBUG(dbgs() << *U << "\n");
//         if (!U || U == nullptr) {
//             if (I->users().empty() || allUsers.empty()) break;
//             continue;
//         };
//         // If cant remove one of its users, then cant remove it as well.
//         if (Instruction *u = dyn_cast<Instruction>(U)) {
//             if (u->getParent() == nullptr) {
//                 instMap[u] = DELETED;
//                 return true;
//             }
//             if (!tryRemoveInstruction(u, s, instMap, ini)) {
//                 return false;
//             }
//         }
//         allUsers.erase(U);
//         LLVM_DEBUG(dbgs() << "!!!\n");
//         for (auto e : allUsers) {
//             LLVM_DEBUG(dbgs() << *e << "\n");
//         }
//         LLVM_DEBUG(dbgs() << "!!!\n");
//         if (allUsers.empty()) break;
//     }
//     if (I->getParent() != nullptr && instMap[I] != DELETED && I != ini) {
//         if (ini->getName() == "conv200") LLVM_DEBUG(dbgs() << *I << " try
//         \n"); LLVM_DEBUG(dbgs() << *I << " doing \n"); StringRef a =
//         I->getName(); I->replaceAllUsesWith(UndefValue::get(I->getType()));
//         s.erase(I);
//         I->eraseFromParent();
//         instMap[I] = DELETED;
//         LLVM_DEBUG(dbgs() << *I << " done \n");
//     }
//     return true;
// }

bool canProgramSlice(Instruction *I) {
    /// PHINode MUST to be at top of basic blocks. If our criterion
    /// is a phi-node it will be replace by an callsite, then all the phi-nodes
    /// under it, MUST to be moved above our criterion. But if at least one
    /// of these phi-nodes is an user of our criterion, then it will not
    /// dominate all the uses. In this case, we cant replace it.
    if (PHINode *phi = dyn_cast<PHINode>(I)) {
        for (User *use : phi->users()) {
            if (Instruction *Iuse = dyn_cast<Instruction>(use))
                if (isa<PHINode>(Iuse) && Iuse->getParent() == I->getParent()) {
                    LLVM_DEBUG(
                        dbgs()
                        << COLOR::RED
                        << "Criterion is a phi-node which at least one of "
                           "it's users are a Phi-Node and are in the same "
                           "basic block!\n"
                        << COLOR::CLEAN);
                    return false;
                }
        }
    }
    return true;
}

/* prob Not use anymore */
// bool meetCriterion(Function *F, Instruction *I) {
//     for (auto &BB : *F) {
//         Instruction *terminator = BB.getTerminator();
//         if (!terminator) {
//             dbgs() << "not tem terminal\n";
//             return false;
//         }
//         if (terminator->getNumOperands() == 0) return false; // void inst
//         if (Instruction *inst = dyn_cast<ReturnInst>(terminator))
//             for (auto &it : inst->operands())
//                 if (I == it) return true;
//     }
//     return false;
// }

std::set<Instruction *> instSetMeetCriterion(Function *F) {
    std::set<Instruction *> S;
    for (auto &BB : *F) {
        Instruction *term = BB.getTerminator();
        if (!term) {
            LLVM_DEBUG(dbgs()
                       << "Error: Found function with no terminators:\n");
            LLVM_DEBUG(dbgs() << *F << '\n');
        };
        if (Instruction *retValue = dyn_cast<ReturnInst>(term))
            for (auto &it : retValue->operands())
                if (Instruction *Iit = dyn_cast<Instruction>(it))
                S.insert(Iit);

        // for (Instruction &I : BB) {
        // if(isa<BinaryOperator>(I)) S.insert(&I);
        // }

 //        for (Instruction &I : BB) {
	//
 //            if (isa<StoreInst>(I)) {
 //                for (auto &p : I.operands())
 //                    if (auto *Iit = dyn_cast<Instruction>(p)) S.insert(Iit);
 //            }
	// }
    }

        // if (isa<BinaryOperator>(I)) {
        //     S.insert(&I);
        // }
        return S;
}

    struct iSlice {
        Instruction *I;            // Criterion
        Function *F;               // Slice
        SmallVector<Value *> args; // Arguments to pass on new function call
        std::set<Instruction *>
            constOriginalInst; // set of instruction in original function
        bool wasRemoved;
    };

    namespace Daedalus {

    PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {
        std::set<Function *> FtoMap;
        std::vector<iSlice> allSlices;
        if (Error Err = M.materializeAll()) {
            handleAllErrors(std::move(Err), [](const ErrorInfoBase &EIB) {
                errs() << "Error materializing module: " << EIB.message()
                       << "\n";
            });
        }
        for (Function &F : M.getFunctionList())
            if (!F.empty()) FtoMap.insert(&F);

        std::unique_ptr<Module> module = std::make_unique<Module>(
            "New_" + M.getName().str(), M.getContext());

        LLVM_DEBUG(dbgs() << "== OUTLINING INST PHASE ==\n");
        for (Function *F : FtoMap) {

            PostDominatorTree PDT;
            PDT.recalculate(*F);

            // Criterion Set
            std::set<Instruction *> S = instSetMeetCriterion(F);

            /// To replace all uses of I with the correpondent call
            for (Instruction *I : S) {
                if (!canSliceInstrType(*I)) continue;
                if (!canProgramSlice(I)) continue;
                LLVM_DEBUG(dbgs() << "Instruction:\t" << *I << '\n');
                LLVM_DEBUG(dbgs() << COLOR::RED);
                ProgramSlice ps = ProgramSlice(*I, *F, PDT);
                // TODO: Still need CanOutline?
                // if (!ps.canOutline()) {
                //     dbgs() << "\033[0m";
                //     continue;
                // }
                LLVM_DEBUG(dbgs() << COLOR::CLEAN);

                Function *G = ps.outline();
                if (G == NULL) continue;
                SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();

                // Get the original instruction, before clone on slice, to check
                // if it can be removed
                std::map<Instruction *, Instruction *> constOriginalInst =
                    ps.getInstructionInSlice();

                std::set<Instruction *> originInstructionSet;
                for (auto &e : constOriginalInst)
                    originInstructionSet.insert(e.first);

                iSlice slice = {I, G, funcArgs, originInstructionSet, false};
                allSlices.push_back(slice);

                LLVM_DEBUG(dbgs() << COLOR::GREEN << "outlined!" << COLOR::CLEAN
                                  << '\n');
            }
        }

        // Filter slices;
        //
        //    std::map<iSlice, bool> filterSlices;
        //    for (auto e : allSlices) filterSlices[e] = false;
        //
        //    int n = allSlices.size();
        //    for (int i = 0; i < n; ++i) {
        //        for (int j = 0; i < n; ++j) {
        //            for (auto &f : allSlices[i].constOriginalInst) {
        //                if (allSlices[j].constOriginalInst.find(f) !=
        //                    allSlices[j].constOriginalInst.end()) {
        //                    if (allSlices[i].constOriginalInst.size() >
        //                        allSlices[j].constOriginalInst.size()) {
        //                        filterSlices[allSlices[i]] = true;
        //                    } else {
        //                        filterSlices[allSlices[j]] = true;
        //                    }
        //                }
        //            }
        //        }
        //    }
        //
        //    for(auto e: filterSlices){
        // if(e.second){
        //     for(int i=0;i<allSlices.size();++i){
        // 	if(allSlices[i] == e.first){
        // 	}
        //     }
        // }
        //    }

        LLVM_DEBUG(dbgs() << "== REMOVING MERGE PHASE ==\n");
        // TODO: Try to merge, if cant merge, delete the functions.
        // > let on allSlices, only the slice that is worth to merge.
        // ...
        //
        //
        //

        LLVM_DEBUG(dbgs() << "== REMOVING INST PHASE ==\n");
        // If it is worth to merge, then substitute the original instruction
        // with the corresponding function call, and removed unsed instructions
        // from original function.
        //

	std::set<Instruction *> toRemove;
        for (auto IS : allSlices) {
            auto [I, F, args, origInst, wasRemoved] = IS;
            // if(I->getParent() == nullptr) continue; // I could may be removed
            // by a previous slice;

            CallInst *callInst =
                CallInst::Create(F, args, I->getName(), I->getParent());
            //
            Instruction *moveTo = I;
            if (I && isa<PHINode>(I)) moveTo = I->getParent()->getFirstNonPHI();
            callInst->moveBefore(moveTo);
            //
            std::set<Instruction *>
                constOriginalInst; // set of instruction in original function

            // dbgs() << "Inst\n";
            // for(Instruction *J: origInst) dbgs() << '\t' << *J << '\n';
            //

            for (Instruction *J : origInst) {
                // if(J->getParent() == nullptr) continue;
                std::set<Instruction *> vis;
                if (I != J && newRemover(J, I, origInst, vis)) {
                    // if (J->getParent() == nullptr) continue;
                    StringRef k = J->getName();
                    dbgs() << "instruction " << *J << " from {"
                           << J->getParent()->getParent()->getName()
                           << "} can be removed!\n";
                    J->replaceAllUsesWith(UndefValue::get(J->getType()));
		    J->eraseFromParent();
		    toRemove.insert(J);
                    dbgs() << "instruction " << k << " removed\n";
                    // dbgs() << ++i << '-' <<  origInst.size() << "\n";
                }
            }
            origInst.clear();

            I->replaceAllUsesWith(callInst);
	    toRemove.insert(I);
        }

        // for (auto IS : allSlices) {
        //     auto [I, F, args, origInst, wasRemoved] = IS;
        //
        //     CallInst *callInst =
        //         CallInst::Create(F, args, I->getName(), I->getParent());
        //
        //     Instruction *moveTo = I;
        //     if (I && isa<PHINode>(I)) moveTo =
        //     I->getParent()->getFirstNonPHI(); callInst->moveBefore(moveTo);
        //
        //     // Check if can remove inst, and removed it.
        //     std::map<Instruction *, instState>
        //         mutInstMap; // If instruction I was removed;
        //     std::set<Instruction *>
        //         mutSet; // a mutable set of instruction on slice.
        //
        //     for (auto inst : origInst) {
        //         mutInstMap[inst] = UNVISITED;
        //         mutSet.insert(inst);
        //     }
        //     // mutInstMap[I] = VISITED;
        //     for (auto [J, isRemoved] : mutInstMap) {
        //         if (J->getParent() == nullptr) continue;
        //         if (isRemoved != DELETED)
        //             tryRemoveInstruction(J, mutSet, mutInstMap, I);
        //         if (mutInstMap.empty()) break;
        //     }
        //
        //     I->replaceAllUsesWith(callInst);
        //     I->eraseFromParent();
        //     origInst.erase(I);
        // }
        dbgs() << "ENDFILE\n";
        for (Function &F : M.getFunctionList()) {
            dbgs() << F << '\n';
            // for (BasicBlock &BB: F){
            //     for(Instruction &I: BB){
            // 	if(I.getName() == "mul8"){
            // 	    dbgs() << I << '\n';
            // 	    for(auto &k: I.operands()){
            // 		dbgs() << k->getType() << '\n';
            // 	    }
            // 	}
            //     }
            // }
        }

        module->print(dbgs(), nullptr);

        return PreservedAnalyses::none();
    }
    } // namespace Daedalus
