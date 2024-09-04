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
        if (!U) continue;
        if (Instruction *J = dyn_cast<Instruction>(U))
            if (!newRemover(J, ini, constOriginalInst, vis)) return false;
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

std::set<Instruction *> instSetMeetCriterion(Function *F) {
    std::set<Instruction *> S;
    for (auto &BB : *F) {
        Instruction *term = BB.getTerminator();
        if (!term) {
            LLVM_DEBUG(dbgs()
                       << "Error: Found function with no terminators:\n");
            LLVM_DEBUG(dbgs() << *F << '\n');
	    continue;
        };
        // if (Instruction *retValue = dyn_cast<ReturnInst>(term))
        //     for (auto &it : retValue->operands())
        //         if (Instruction *Iit = dyn_cast<Instruction>(it)) S.insert(Iit);

        for (Instruction &I : BB) {
            if (isa<BinaryOperator>(I)) S.insert(&I);
        }

        // for (Instruction &I : BB) {
        //     if (isa<StoreInst>(I)) {
        //         for (auto &p : I.operands())
        //             if (auto *Iit = dyn_cast<Instruction>(p)) S.insert(Iit);
        //     }
        // }
    }

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

    std::map<int,int> a;

PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {
    std::set<Function *> FtoMap;
    std::vector<iSlice> allSlices;
    if (Error Err = M.materializeAll()) {
        handleAllErrors(std::move(Err), [](const ErrorInfoBase &EIB) {
            errs() << "Error materializing module: " << EIB.message() << "\n";
        });
    }
    for (Function &F : M.getFunctionList())
        if (!F.empty()) FtoMap.insert(&F);

    std::unique_ptr<Module> module =
        std::make_unique<Module>("New_" + M.getName().str(), M.getContext());

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

            LLVM_DEBUG(dbgs() << COLOR::CLEAN);

            Function *G = ps.outline();
            if (G == NULL) continue;
            SmallVector<Value *> funcArgs = ps.getOrigFunctionArgs();

            // Get the original instruction, to check
            // if it can be removed
            std::map<Instruction *, Instruction *> constOriginalInst =
                ps.getInstructionInSlice();

            std::set<Instruction *> originInstructionSet;
            for (auto &e : constOriginalInst)
                originInstructionSet.insert(e.first);

            iSlice slice = {I, G, funcArgs, originInstructionSet, false};
            allSlices.push_back(slice);

            LLVM_DEBUG(dbgs()
                       << COLOR::GREEN << "outlined!" << COLOR::CLEAN << '\n');
        }
    }

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
        if (I->getParent() == nullptr) continue; // I could may be removed
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

        for (Instruction *J : origInst) {
            if (J->getParent() == nullptr) continue;
            std::set<Instruction *> vis;
            if (I != J && newRemover(J, I, origInst, vis)) {
                J->replaceAllUsesWith(UndefValue::get(J->getType()));
                J->eraseFromParent();
                toRemove.insert(J);
            }
        }
        origInst.clear();

        I->replaceAllUsesWith(callInst);
        I->eraseFromParent();
        toRemove.insert(I);
    }
    dbgs() << "ENDFILE\n";
    for (Function &F : M.getFunctionList()) dbgs() << F << '\n';

    module->print(dbgs(), nullptr);

    return PreservedAnalyses::none();
}
} // namespace Daedalus
