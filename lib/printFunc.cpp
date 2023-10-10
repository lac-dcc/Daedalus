
#include "../include/printFunc.h"
#include "/home/danielaugusto/slicevern/passes/ProgramSlice.cpp"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include <llvm-14/llvm/Support/Casting.h>
#include <llvm-14/llvm/Analysis/AliasAnalysis.h>
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include <llvm-14/llvm/Support/Casting.h>
#include <unordered_map>
using namespace llvm;
#include <iostream>


#include <llvm/Pass.h>

namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	
	std::string res = "";
	SmallVector<std::pair<Instruction *, ProgramSlice *> >v;
	for(Instruction &I: instructions(F)){
		ProgramSlice ps = ProgramSlice(I, F);
		if(ps.canOutline()) 
		v.push_back({&I,&ps});
	}
	return res;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
	return PreservedAnalyses::all();
}
}
