#ifndef PFHEADER
#define PFHEADER
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/PassManager.h"
#include <llvm/Support/raw_ostream.h>

namespace printFunc{
	struct printFuncAnalysis : public llvm::AnalysisInfoMixin<printFuncAnalysis>{
		using Result = llvm::SmallVector<llvm::BinaryOperator *, 0>;
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
 