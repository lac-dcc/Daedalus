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
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/Analysis/AliasAnalysis.h>
#include "llvm/Analysis/TargetLibraryInfo.h"

namespace Daedalus{
	struct DaedalusPass : public llvm::PassInfoMixin<DaedalusPass>{
//		explicit DaedalusPass(llvm::raw_ostream &OS):OS(OS){} // TODO Maybe remove this?
		llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &MAM);
	};
};

#endif
