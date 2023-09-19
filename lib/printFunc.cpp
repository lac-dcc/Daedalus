
#include "../include/printFunc.h"
#include "/home/danielaugusto/wyvern/passes/ProgramSlice.cpp"
#include <llvm-14/llvm/Analysis/TargetLibraryInfo.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include <llvm-14/llvm/Support/Casting.h>
using namespace llvm;
#include <iostream>
namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,
                                                 FunctionAnalysisManager &FAM) {
 // SmallVector<std::pair<std::string, std::vector<std::string>>, 0> Instr;
	std::string res = "";
  for (BasicBlock &BB : F) {
    for (Instruction &I : BB) {
		if(CallInst *ci = dyn_cast<CallInst>(&I)){
			Function* fn = ci->getCalledFunction();
			res += fn->getName().str();
			res += '\n';
			for(auto *arg = ci->arg_begin();arg != ci->arg_end();++arg){
				Instruction *SliceableArg = dyn_cast<Instruction>(arg);
				if(!(SliceableArg = dyn_cast<Instruction>(arg))) {printf("not sliceable\n");continue;}
				printf("sliceable!\n");
				TargetLibraryInfo &tl = FAM.getResult<TargetLibraryAnalysis>(F);
//  ProgramSlice(Instruction &I, Function &F, CallInst &CallSite, AAResults *AA, TrgetLibraryInfo &TLI, bool thunkDebugging);
				ProgramSlice ps = ProgramSlice(*SliceableArg, F, *ci, NULL,tl,true);
				Function *test = ps.outline();
				printf("outline: %p\n", test);
			}
			res += '\n';
			
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
  return res;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
  auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
  OS << "===========" << F.getName().str() << "==============\n";
 // OS << "Instructions: " << FunctionArray.size() << '\n';
	std::cout << FunctionArray << std::endl;
  return PreservedAnalyses::all();
}
}
