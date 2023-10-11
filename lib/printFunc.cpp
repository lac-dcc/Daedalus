
#include "../include/printFunc.h"
#include "/home/pc2/wyvern/passes/ProgramSlice.cpp"
#include "llvm/Support/Debug.h"
#include <llvm/Support/Casting.h>
#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/TargetLibraryInfo.h>
#include <llvm/IR/PassManager.h>
#include <llvm/Support/Casting.h>
#include <unordered_map>
using namespace llvm;
#include <iostream>


namespace printFunc {
	AnalysisKey printFuncAnalysis::Key;
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
			int a;std::cin >> a;
			v.push_back({&I,&ps});
			printf("%d\n", ++i);
		} 
		for(auto e: v){
	//		printf("%p - %p\n", e.first, e.second);
		}
		delete(TLI);
		return res;
	}
	PreservedAnalyses printFuncPass::run(Function &F,
										 FunctionAnalysisManager &FAM) {
		return PreservedAnalyses::all();
	}
}
