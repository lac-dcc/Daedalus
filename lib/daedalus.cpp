#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"

using namespace llvm;
#include <llvm/Pass.h>

namespace Daedalus {
AnalysisKey DaedalusAnalysis::Key;
DaedalusAnalysis::Result DaedalusAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	std::string res = "";
	SmallVector<std::pair<Instruction *, Function *> >v;
	for(Instruction &I: instructions(F)){
		ProgramSlice *ps = new ProgramSlice(I,F);
		printf("MAKE SLICE\n");
		if(ps->canOutline()){
	//	Function *X = ps->outline();
	//	X->dump();
		break;
	//v.push_back({&I,X});
		}
		printf("pass\n");
		delete(ps);
	}
	printf("Size: %ld\n", v.size());
	for(auto &e: v) delete(e.second);
	return res;
}
PreservedAnalyses DaedalusPass::run(Function &F, FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<DaedalusAnalysis>(F);
	return PreservedAnalyses::all();
}
}
