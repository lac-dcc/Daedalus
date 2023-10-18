#include "../include/instrToSlice.h"
#include "passes/ProgramSlice.cpp"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include <llvm/IR/Instructions.h>
#include <unordered_map>
using namespace llvm;

#include <llvm/Pass.h>

namespace instrToSlice {
AnalysisKey instrToSliceAnalysis::Key;
int i=0;
instrToSliceAnalysis::Result instrToSliceAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	std::string res = "";
	SmallVector<std::pair<Instruction *, Function *> >v;
	for(Instruction &I: instructions(F)){
		ProgramSlice *ps = new ProgramSlice(I,F,++i);
		printf("1\n");
		if(ps->canOutline()){
			Function *X = ps->outline();
			X->dump();
			v.push_back({&I,X});

		}
		printf("pass\n");
		++i;
		delete(ps);
	}
	printf("Size: %ld\n", v.size());
	for(auto &e: v) delete(e.second);
	return res;
}
PreservedAnalyses instrToSlicePass::run(Function &F, FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<instrToSliceAnalysis>(F);
	return PreservedAnalyses::all();
}
}
