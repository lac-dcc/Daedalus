
#include "../include/printFunc.h"
#include "passes/ProgramSlice.cpp"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include <llvm/IR/Instructions.h>
#include <unordered_map>
using namespace llvm;
#include <iostream>


#include <llvm/Pass.h>

namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	
	std::string res = "";
	SmallVector<std::pair<Instruction *, ProgramSlice *> >v;
	int i=0;
	for(Instruction &I: instructions(F)){
		ProgramSlice *ps = new ProgramSlice(I,F,++i);
		v.push_back({&I,ps});
	}
	Function *X = v[0].second->outline();
	X->dump();
	return res;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
	return PreservedAnalyses::all();
}
}
