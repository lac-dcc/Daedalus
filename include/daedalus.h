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

#include "llvm/IR/Function.h"
#include "llvm/IR/PassManager.h"

/**
 * @brief Determines if an instruction type can be sliced.
 */
bool canSliceInstrType(llvm::Instruction &I);

/**
 * @brief Attempts to remove an instruction if it meets specific criteria.
 */
bool canRemove(llvm::Instruction *I, llvm::Instruction *ini,
    std::set<llvm::Instruction *> &constOriginalInst,
    std::set<llvm::Instruction *> &vis);


void killSlice(llvm::Function *, llvm::CallInst *, llvm::Instruction *);

bool isSelfContained(std::set<llvm::Instruction *> , llvm::Instruction *,
    std::set<llvm::Instruction *> &);
  /**
   * @brief Checks if a program slice can be created for an instruction.
   */
  bool canProgramSlice(llvm::Instruction *I);

  /**
   * @brief Checks if a given instruction meets the slicing criteria.
   */
  std::set<llvm::Instruction *> instSetMeetCriterion(llvm::Function *F);

  struct iSlice {
    llvm::Instruction *I;     // Criterion
    llvm::CallInst *callInst; // CallInst to F
    llvm::Function *F;        // Slice
    llvm::SmallVector<llvm::Value *>
      args; // Arguments to pass on new function call
    std::set<llvm::Instruction *>
      constOriginalInst; // set of instruction in original function
    bool wasRemoved;
  };

namespace Daedalus {

struct DaedalusPass : public llvm::PassInfoMixin<DaedalusPass> {
  /**
   * @brief Runs the Daedalus LLVM pass on a given module.
   */
  llvm::PreservedAnalyses run(llvm::Module &M,
                              llvm::ModuleAnalysisManager &MAM);
};
}; // namespace Daedalus

#endif
