
#include "../include/printFunc.h"
<<<<<<< HEAD
#include "/home/danielaugusto/wyvern/passes/ProgramSlice.cpp"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include <llvm-14/llvm/Analysis/DependenceAnalysis.h>
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include <unordered_map>
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
=======
#include "/home/pc2/wyvern/passes/ProgramSlice.cpp"
#include <llvm-14/llvm/Support/Casting.h>
#include <llvm-14/llvm/Analysis/AliasAnalysis.h>
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include <llvm-14/llvm/Support/Casting.h>
#include <unordered_map>
>>>>>>> 18d8ac6 (a)
using namespace llvm;
#include <iostream>


namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
<<<<<<< HEAD
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	
	std::string res = "";
	std::cout << "Function: \n";
	//F.dump();
	std::vector<std::pair<Instruction *, ProgramSlice *> >v;
	std::vector<std::pair<int,int>> a;
	a.push_back(std::make_pair(2,3));
	TargetLibraryInfo *TLI = (TargetLibraryInfo *)malloc(sizeof(TargetLibraryInfo));
	int i =0;
	for(Instruction &I: instructions(F)){
		if(!isa<CallInst>(&I)) continue;
		CallInst *CI = cast<CallInst>(&I);
		ProgramSlice ps = ProgramSlice(I, F, *CI, NULL, *TLI, true);
		v.push_back({&I,&ps});
		printf("%d\n", ++i);
	} 
	for(auto e: v){
		printf("%p - %p\n", e.first, e.second);
	}
	delete(TLI);
	return res;
>>>>>>> 18d8ac6 (a)
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
	DependenceAnalysis DA;
	Function *function;
	Instruction *inst;
	return PreservedAnalyses::all();
}
}
