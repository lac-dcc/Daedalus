
#include "../include/printFunc.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/PassManager.h"
#include "/home/pc2/programming/cpp/wyvern/passes/ProgramSlice.h"

using namespace llvm;

namespace printFunc{
	AnalysisKey printFuncAnalysis::Key;
	printFuncAnalysis::Result printFuncAnalysis::run(Function &F, FunctionAnalysisManager &FAM){
		SmallVector<BinaryOperator *, 0> Instr;
		for(BasicBlock &BB: F){
			for(Instruction &I: BB){
				Instr.push_back(&cast<BinaryOperator>(I));
			}
		}
		return Instr;
	}
	PreservedAnalyses printFuncPass::run(Function &F, FunctionAnalysisManager &FAM){
		auto &Insts = FAM.getResult<printFuncAnalysis>(F);
		return PreservedAnalyses::all();
		OS << "=============================================\n";
		OS << "|| " << F.getName() << " ||\n";
		OS << "=============================================\n";
		for (auto &Add : Insts) OS << *Add << "\n";
		OS << "=============================================\n";
		return PreservedAnalyses::all();
	}
}
