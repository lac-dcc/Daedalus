#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"

using namespace llvm;
#include <llvm/Pass.h>
#include <iostream>
int i;
namespace Daedalus {
AnalysisKey DaedalusAnalysis::Key;
DaedalusAnalysis::Result DaedalusAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	std::string res = "";
	if(i == 2) return res;
	SmallVector<std::pair<Instruction *, Function *> >v;
	for(Instruction &I: instructions(F)){
		ProgramSlice *ps = new ProgramSlice(I,F);
		if(ps->canOutline()){
			std::string a = I.getName().str();
			std::cout << "NAME: " << a << std::endl;
			Function *X = ps->outline();
		//	X->dump();
			i++;
			break;
			v.push_back({&I,X});
		}
		printf("pass\n");
		delete(ps);
	}
	printf("========\n");
	for(auto &e: v) delete(e.second);
	return res;
}
PreservedAnalyses DaedalusPass::run(Function &F, FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<DaedalusAnalysis>(F);
	return PreservedAnalyses::all();
}
}
