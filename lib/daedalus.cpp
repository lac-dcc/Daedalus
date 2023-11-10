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
	return instr_Func;
}
PreservedAnalyses DaedalusPass::run(Function &F, FunctionAnalysisManager &FAM) {
	std::unordered_map<Instruction *, Function *> instr_Func;
	std::set<Instruction> toMap;
	for(Instruction &I: instructions(F)) toMap.insert(I);
	for(Instruction &I: instructions(F)){
		if(!I.willReturn() || I.mayThrow()) continue;
		if(isa<AllocaInst>(I)) continue;
		ProgramSlice *ps = new ProgramSlice(I,F);
		//if(ps->newcanOutline()){
			Function *X = ps->outline();
		//	instr_Func.insert({&I, X});
		//}
		delete(ps);
	}
	//auto &FunctionArray = FAM.getResult<DaedalusAnalysis>(F);
	
	return PreservedAnalyses::all();
}
}
