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
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Value.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Pass.h>
#include <llvm/Analysis/PostDominators.h>

/**
 * @brief Represents an outlined program slice
 */
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

/**
 * @brief Determines if an instruction type can be used as slice criterion.
 */
bool canBeSliceCriterion(llvm::Instruction &I);

/**
 * @brief Attempts to remove an instruction if it meets specific criteria.
 */
bool canRemove(llvm::Instruction *I, llvm::Instruction *ini,
               std::set<llvm::Instruction *> &constOriginalInst,
               std::set<llvm::Instruction *> &vis,
               std::set<llvm::Instruction *> &toRemove);

/**
 * @brief Checks if a given instruction is self-contained within a set of
 * instructions.
 */
bool isSelfContained(std::set<llvm::Instruction *> origInst,
                     llvm::Instruction *I,
                     std::set<llvm::Instruction *> &tempToRemove);

/**
 * @brief Removes instructions from slices and simplifies functions.
 */
std::pair<uint, uint>
removeInstructions(std::vector<iSlice> &allSlices,
                   const std::set<llvm::Function *> &mergeTo,
                   std::set<llvm::Function *> &toSimplify);

/**
 * @brief Removes a function and its call instructions from the LLVM IR.
 */
void killSlice(llvm::Function *, llvm::CallInst *, llvm::Instruction *);

/**
 * @brief Collects and returns a set of instructions from a given function that
 * meet certain criteria.
 */
std::set<llvm::Instruction *> instSetMeetCriterion(llvm::Function *F);

/**
 * @brief Counts the number of instructions in a given function.
 */
unsigned int numberOfInstructions(llvm::Function *F);

/**
 * @brief Counts the number of functions that have been merged into a given
 * function.
 */
unsigned int numberOfMergedFunctions(
    llvm::Function *F,
    std::map<llvm::Function *, llvm::Function *> &delToNewFunc);

/**
 * @brief Generates DOT files for a set of functions and stores them in a
 * directory.
 */
void functionSlicesToDot(llvm::Module &M,
                         const std::set<llvm::Function *> &newFunctions);

/**
 * @brief Analyzes the control flow graph of a function to identify
 * try-catch logic.
 */
std::set<llvm::BasicBlock *> searchForTryCatchLogic(llvm::Function &F);

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
