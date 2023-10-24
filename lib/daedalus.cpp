#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/Debug.h"

using namespace llvm;
#include <llvm/Pass.h>
#include <iostream>
namespace Daedalus {
AnalysisKey DaedalusAnalysis::Key;
DaedalusAnalysis::Result DaedalusAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	std::unordered_map<Instruction *, Function *> instr_Func;
	
	for(Instruction &I: instructions(F)){
		if(!I.willReturn() || I.mayThrow()) continue;
		ProgramSlice *ps = new ProgramSlice(I,F);
		// TODO: The point here is, the slices seems are generated fine but they cannot be outlined. I think some slices can not be outlined, seem that slices such that instruction criteria may throw or not have a return are example of it. what others kind of slices can not be outlined.
	//	if(ps->canOutline()){
			Function *X = ps->outline();
			instr_Func.insert({&I, X});
	//	}
		delete(ps);
	}
	return instr_Func;
}
PreservedAnalyses DaedalusPass::run(Function &F, FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<DaedalusAnalysis>(F);
	
	return PreservedAnalyses::all();
}
}
