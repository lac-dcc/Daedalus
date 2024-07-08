/** 
 *  @file   daedalus.h
 *  @brief  Daedalus Pass Header File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
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

/**
 * @brief Attempts to remove an instruction if it meets specific criteria.
 */
bool tryRemoveInstruction(llvm::Instruction *,
                          std::set<llvm::Instruction *> &,
                          std::map<llvm::Instruction *, bool> &,
                          llvm::Instruction *);

/**
 * @brief Determines if an instruction type can be sliced.
 */
bool canSliceInstrType(llvm::Instruction &I);

namespace Daedalus {
    struct DaedalusPass : public llvm::PassInfoMixin<DaedalusPass> {
        //		explicit DaedalusPass(llvm::raw_ostream &OS):OS(OS){} // TODO
        //Maybe remove this?

        /**
         * @brief Runs the Daedalus LLVM pass on a given module.
         */
        llvm::PreservedAnalyses run(llvm::Module &M,
                                    llvm::ModuleAnalysisManager &MAM);
    };
}; // namespace Daedalus

#endif
