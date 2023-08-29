#ifndef PFHEADER
#define PFHEADER

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include <fstream>

namespace printFunc{
	struct printFunc : public llvm::PassInfoMixin<printFunc>{
		llvm::PreservedAnalyses run(llvm::Function &, llvm::FunctionAnalysisManager &);
	};
};

#endif
