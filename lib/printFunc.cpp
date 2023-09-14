
#include "../include/printFunc.h"
#include "/home/danielaugusto/wyvern/passes/ProgramSlice.cpp"
#include <llvm-14/llvm/Analysis/AliasAnalysis.h>
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/Instruction.h>
using namespace llvm;
#include <iostream>
namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,
                                                 FunctionAnalysisManager &FAM) {
  SmallVector<std::pair<std::string, std::vector<std::string>>, 0> Instr;
  for (BasicBlock &BB : F) {
    for (Instruction &I : BB) {
		if(CallInst *ci = dyn_cast<CallInst>(&I)){
			Function* fn = ci->getCalledFunction();
			std::string s = fn->getName().str();
			printf("%s", s.c_str());
			Instr.push_back({s, std::vector<std::string>()});

			for(auto arg = fn->arg_begin();arg != fn->arg_end();++arg){
	//			if(auto *ic = dyn_cast<ConstantInt>(arg))  printf("%d\n", ic-);
				Instr.back().first = (*arg).getName();
			}
			
		}
		// if I is call instructino, then cast it into CallInst C::
		// find first árameter P of the call instruciton
		// Buid the slice for C and P 
	//	ProgramSlice x = ProgramSlice(I, F, *ci, d, *e, false);
	//	if(x.canOutline()) x.outline();
	//	Function *k = (Function *)malloc(sizeof(Function));
	//	k = x.outline();
    }
  }
  return Instr;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
  auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
  OS << "===========" << F.getName().str() << "==============\n";
  OS << "Instructions: " << FunctionArray.size() << '\n';
//  OS << FunctionArray << '\n';
  for (auto &f : FunctionArray) {
	OS << f.first << '\n';
	for(auto k: f.second){
		OS << k << '\n';
	}
	OS << "------\n";
  }
  return PreservedAnalyses::all();
}
}
