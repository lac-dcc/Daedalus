#ifndef PFHEADER
#define PFHEADER
#include <llvm/Pass.h>
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include <llvm/IR/Instruction.h>
#include "llvm/IR/Function.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/TargetLibraryInfo.h>
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/Analysis/CaptureTracking.h"
#include "llvm/Analysis/LoopInfo.h"
//#include "/home/danielaugusto/wyvern/passes/ProgramSlice.cpp"

#include <vector>

namespace printFunc{
	struct printFuncAnalysis : public llvm::AnalysisInfoMixin<printFuncAnalysis>{
		//using Result = llvm::SmallVector<llvm::Function *, 0>;
		using Result = llvm::SmallVector<std::pair<std::string, std::vector<std::string>>, 0>;
		Result run(llvm::Function &, llvm::FunctionAnalysisManager &);
		static llvm::AnalysisKey Key;
	};
	struct printFuncPass : public llvm::PassInfoMixin<printFuncPass>{
		explicit printFuncPass(llvm::raw_ostream &OS):OS(OS){}
		llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);
		private:
			llvm::raw_ostream &OS;
	};
};

#endif
 
