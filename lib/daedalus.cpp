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
const std::string CLEAN = "\033[0m";
const std::string GREEN = "\033[32m";
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

enum instState { UNVISITED, VISITED, DELETED };

// Can be removed if: wasnt removed, its on slice instruction set AND all
// uses can be removed.
bool tryRemoveInstruction(Instruction *I, std::set<Instruction *> &s,
                          std::map<Instruction *, instState> &instMap,
                          Instruction *ini) {
    if (I->getParent() == nullptr) return true;
    StringRef Iname = I->getName();
    if (!I || instMap[I] == DELETED) return true;
    if (instMap[I] == VISITED) {
        // I->replaceAllUsesWith(UndefValue::get(I->getType()));
        return true;
    }
    instMap[I] = VISITED;
    if (s.find(I) == s.end() || I->isTerminator()) return false;

    std::set<User *> allUsers;
    for (auto U : I->users()) allUsers.insert(U);

    for (auto U : allUsers) {
        if (!U || U == nullptr) {
            if (I->users().empty() || allUsers.empty()) break;
            continue;
        };
        /// If cant remove one of its users, then cant remove it as well.
        if (Instruction *u = dyn_cast<Instruction>(U)) {
            // if(u->getParent() == nullptr) return true;
            if (!tryRemoveInstruction(u, s, instMap, ini)) {
                return false;
            }
        }
        // allUsers.erase(U);
        if (I->users().empty()) break;
    }
    if (I->getParent() != nullptr && instMap[I] != DELETED && I != ini) {
        s.erase(I);
        I->replaceAllUsesWith(UndefValue::get(I->getType()));
        I->eraseFromParent();
        instMap[I] = DELETED;
    }
    return true;
}

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
        if (!term || term->getNumOperands() == 0) continue;
        if (Instruction *retValue = dyn_cast<ReturnInst>(term))
            for (auto &it : retValue->operands())
                if (Instruction *Iit = dyn_cast<Instruction>(it)) S.insert(Iit);
    }
    for (auto &BB : *F)
        for (Instruction &I : BB)
            if (isa<StoreInst>(I)) {
                for (auto &p : I.operands())
                    if (auto *Iit = dyn_cast<Instruction>(p)) S.insert(Iit);
            }
    // if (isa<BinaryOperator>(I)) {
    //     S.insert(&I);
    // }
    return S;
}

struct iSlice {
    Instruction *I;
    Function *F;
    SmallVector<Value *> args;
    std::set<Instruction *> constOriginalInst;
    bool wasRemoved;
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

        // All instruction Set
        std::set<Instruction *> R;
        for (Instruction &I : instructions(F)) R.insert(&I);

        // Criterion Set
        std::set<Instruction *> S = instSetMeetCriterion(F);

        /// To replace all uses of I with the correpondent call
        for (Instruction *I : S) {
            if (!canSliceInstrType(*I)) continue;
            if (!canProgramSlice(I)) continue;
            LLVM_DEBUG(dbgs() << "Instruction:\t" << *I << '\n');
            LLVM_DEBUG(dbgs() << COLOR::RED);
            ProgramSlice ps = ProgramSlice(*I, *F, PDT);
            if (ps.getInstructionInSlice().size() <= 1) {
                LLVM_DEBUG(
                    dbgs()
                    << COLOR::RED
                    << "Not outlined, Insufficient Numbers os instruction to "
                       "outline! \n"
                    << COLOR::CLEAN);
                continue;
            }
            // if (!ps.canOutline()) {
            //     dbgs() << "\033[0m";
            //     continue;
            // }
            LLVM_DEBUG(dbgs() << COLOR::CLEAN);

            Function *G = ps.outline();
            SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();

            // Get the original instruction, before clone on slice, to check if
            // it can be removed
            std::map<Instruction *, Instruction *> constOriginalInst =
                ps.getInstructionInSlice();

            std::set<Instruction *> originInstructionSet;
            for (auto &e : constOriginalInst)
                originInstructionSet.insert(e.first);

            iSlice slice = {I, G, funcArgs, originInstructionSet, false};
            allSlices.push_back(slice);

            LLVM_DEBUG(dbgs() << COLOR::GREEN << "outlined!" << COLOR::CLEAN);
        }
    }
    // TODO: Try to merge, if cant merge, delete the functions.
    // > let on allSlices, only the slice that is worth to merge.
    // ...
    //
    //
    //

    LLVM_DEBUG(dbgs() << "Removing inst\n");
    // If it is worth to merge, then substitute the original instruction with
    // the corresponding function call, and removed unsed instructions from
    // original function.

    for (auto IS : allSlices) {
        auto [I, F, args, origInst, wasRemoved] = IS;

        if (wasRemoved) continue;

        CallInst *callInst =
            CallInst::Create(F, args, I->getName(), I->getParent());

        Instruction *moveTo = I;
        if (I && isa<PHINode>(I)) moveTo = I->getParent()->getFirstNonPHI();
        callInst->moveBefore(moveTo);

        // Check if can remove inst, and removed it.
        std::map<Instruction *, instState>
            mutInstMap;                      // If instruction I was removed;
        std::map<Instruction *, bool> visit; // If instruction I was visited;
        std::set<Instruction *>
            mutSet; // a mutable set of instruction on slice.

        for (auto inst : origInst) {
            mutInstMap[inst] = UNVISITED;
            mutSet.insert(inst);
        }
        mutInstMap[I] = VISITED;
        for (auto [J, isRemoved] : mutInstMap) {
            if (J->getParent() == nullptr) continue;
            if (isRemoved != DELETED)
                tryRemoveInstruction(J, mutSet, mutInstMap, I);
            if (mutInstMap.empty()) break;
        }

        I->replaceAllUsesWith(callInst);
        I->eraseFromParent();
        origInst.erase(I);
    }
    // dbgs() << "ENDFILE\n";
    // for (Function &F : M.getFunctionList()) {
    //     dbgs() << F << '\n';
    // }

    module->print(dbgs(), nullptr);

    return PreservedAnalyses::none();
}
} // namespace Daedalus
