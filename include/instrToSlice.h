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
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/TargetLibraryInfo.h>
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/Analysis/CaptureTracking.h"
#include "llvm/Analysis/LoopInfo.h"

namespace instrToSlice{
	struct instrToSliceAnalysis : public llvm::AnalysisInfoMixin<instrToSliceAnalysis>{
		using Result = std::string; // TODO: Return an array of pair <Instruction *, Function *>
		Result run(llvm::Function &, llvm::FunctionAnalysisManager &);
		static llvm::AnalysisKey Key;
	};
	struct instrToSlicePass : public llvm::PassInfoMixin<instrToSlicePass>{
		explicit instrToSlicePass(llvm::raw_ostream &OS):OS(OS){}
		llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM);
		private:
			llvm::raw_ostream &OS;
	};
};

#endif
