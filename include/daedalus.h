#ifndef PFHEADER
#define PFHEADER
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Value.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Pass.h>

bool tryRemoveInstruction(llvm::Instruction *,
                          std::set<llvm::Instruction *> &,
                          std::map<llvm::Instruction *, bool> &,
                          llvm::Instruction *);

bool canSliceInstrType(llvm::Instruction &I);

namespace Daedalus {
struct DaedalusPass : public llvm::PassInfoMixin<DaedalusPass> {
    //		explicit DaedalusPass(llvm::raw_ostream &OS):OS(OS){} // TODO
    //Maybe remove this?
    llvm::PreservedAnalyses run(llvm::Module &M,
                                llvm::ModuleAnalysisManager &MAM);
};
}; // namespace Daedalus

#endif
