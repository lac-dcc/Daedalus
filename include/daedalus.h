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
#include "llvm/IR/Function.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Pass.h>

/**
 * @brief Represents the result of processing slices
 */
struct SliceProcessingResult {
  uint unmergeable; // Count of slices not merged due to function constraints
  uint nonSelfContained; // Count of slices not self-contained
};

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
 * @brief Determines if an instruction can be safely removed without affecting a
 * target instruction.
 */
bool canRemoveInstruction(llvm::Instruction *inst,
                          llvm::Instruction *targetInst,
                          const std::set<llvm::Instruction *> &origInst,
                          std::set<llvm::Instruction *> &visited,
                          std::map<llvm::Instruction *, bool> &canRemoveCache);

/**
 * @brief Analyzes which instructions can be safely removed without
 * affecting the target instruction.
 */
bool analyzeRemovableInstructions(const std::set<llvm::Instruction *> &origInst,
                                  llvm::Instruction *targetInst,
                                  std::set<llvm::Instruction *> &toRemove);

/**
 * @brief Processes a single slice to determine if it can be simplified
 */
std::pair<bool, bool> processSlice(iSlice &slice,
                                   const std::set<llvm::Function *> &mergeTo,
                                   std::set<llvm::Function *> &toSimplify,
                                   std::set<llvm::Instruction *> &toRemove);

/**
 * @brief Removes instructions from slices and simplifies functions.
 */
SliceProcessingResult
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
