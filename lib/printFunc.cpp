
#include "../include/printFunc.h"
#include "/home/danielaugusto/wyvern/passes/ProgramSlice.cpp"
#include "llvm/IR/InstIterator.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include <llvm-14/llvm/Analysis/DependenceAnalysis.h>
#include <llvm-14/llvm/IR/PassManager.h>
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
using namespace llvm;
#include <iostream>
namespace printFunc {
AnalysisKey printFuncAnalysis::Key;
printFuncAnalysis::Result printFuncAnalysis::run(Function &F,FunctionAnalysisManager &FAM) {
	
	std::string res = "";
	std::cout << "Function: \n";
	//F.dump();
	for(Instruction &I: instructions(F)){
		
	}
	return res;
}
PreservedAnalyses printFuncPass::run(Function &F,
                                     FunctionAnalysisManager &FAM) {
	auto &FunctionArray = FAM.getResult<printFuncAnalysis>(F);
	DependenceAnalysis DA;
	Function *function;
	Instruction *inst;
//	//FunctionAnalysisManager::Result<DependenceAnalysis>&DAResult = FAM.getResult<llvm::DependenceAnalysis>(*function);
	auto &DAResult = FAM.getResult<DependenceAnalysis>(*function);
//	DA.run(*function, FAM);
//	DependenceAnalysis a;
//	a.name();

//	DependenceAnalysis::Dependence deps;
//	DA.getDependences(*inst, deps);
//    for (const auto &dep : deps) {
//        if (dep.isOrdered()) {
//            llvm::errs() << "Data dependence found:\n";
//            dep.dump();
//        } else {
//            llvm::errs() << "No data dependence found.\n";
//        }
//    }
	  return PreservedAnalyses::all();
}
}
