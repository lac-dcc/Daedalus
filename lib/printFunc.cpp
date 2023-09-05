
#include "../include/printFunc.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/PassManager.h"
#include <llvm-14/llvm/Analysis/AliasAnalysis.h>
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/Instruction.h>
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/Analysis/CaptureTracking.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include <llvm/Analysis/TargetLibraryInfo.h>
using namespace llvm;

namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,
                                                 FunctionAnalysisManager &FAM) {
  SmallVector<Function *, 0> Instr;
  for (BasicBlock &BB : F) {
    for (Instruction &I : BB) {
		  CallInst *ci = dyn_cast<CallInst>(&I);
		  if (!ci)
			continue;
		  inst_begin(F);
		//  TargetLibraryInfo &TLI = getAnalysis<TargetLibraryInfoWrapperPass>().getTLI(*ci);
		AAResults AA = ;
		auto TLI = FAM.getResult<TargetLibraryInfoWrapperPass>(F);
    	ProgramSlice p = ProgramSlice(I, F, ci, NULL, NULL, false);
	
    }
  }
  //	CallInst *ci = dyn_cast<CallInst>(I);
  if (p.canOutline()) {
	  Function *a = p.outline();
  }
  free(p);
  return Instr;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
  auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
  auto &TLI = FAM.getResult<TargetLibraryInfoWrapperPass>(F);
  OS << "Functions:\n";
  for (Function *f : FunctionArray)
    OS << *f;
  //	printf("%p", a);
  return PreservedAnalyses::all();
}
}
