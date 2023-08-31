#ifndef PFHEADER
#define PFHEADER

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm-14/llvm/IR/InstrTypes.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include <llvm-14/llvm/Support/raw_ostream.h>

namespace printFunc{
	struct printFuncAnalysis : public llvm::AnalysisInfoMixin<printFuncAnalysis>{
		using res = llvm::SmallVector<llvm::BinaryOperator *, 0>;
		res run(llvm::Function &, llvm::FunctionAnalysisManager &);
		static llvm::AnalysisKey Key;
	};
	struct printFuncRun : public llvm::PassInfoMixin<printFuncRun>{
		llvm::PreservedAnalyses run(llvm::Function &, llvm::FunctionAnalysisManager &);
		private:
			llvm::raw_ostream &OS;
	};
};

#endif
