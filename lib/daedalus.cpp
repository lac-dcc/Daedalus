#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Debug.h"

using namespace llvm;
#include <llvm/Pass.h>
#include <iostream>

bool canOutline(Instruction &I){
	if(isa<BranchInst>(I)) return false; // Branch Instruction have badref
	if(isa<ReturnInst>(I)) return false; // No Return for while, badref
	if(isa<AllocaInst>(I)) return false; // No needed
	return true;
}

namespace Daedalus {

	PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {
		std::unordered_map<Instruction *, Function *> instr_Func;
		
		std::set<Function *> FtoMap;	
		for(Function &F: M.getFunctionList()) FtoMap.insert(&F);

		for(Function *F: FtoMap){
			for(Instruction &I: instructions(F)){
				if(isa<ReturnInst>(I)){
					ReturnInst *ret = dyn_cast<ReturnInst>(&I);
      				LLVM_DEBUG(dbgs() << "TYPE:\n");
					LLVM_DEBUG(ret->getReturnValue()->getType()->print(dbgs()));
      				LLVM_DEBUG(dbgs() << "TYPE\n");
				}
				if(!canOutline(I)) continue;
				ProgramSlice ps = ProgramSlice(I, *F);
				ps.outline();
			}
		}


	//	for(Instruction &I: instructions(F)){
	//		if(!I.willReturn() || I.mayThrow()) continue;
	//		if(isa<AllocaInst>(I)) continue;
	//		ProgramSlice *ps = new ProgramSlice(I,F);
	//		//if(ps->newcanOutline()){
	//			Function *X = ps->outline();
	//		//	instr_Func.insert({&I, X});
	//		//}
	//		delete(ps);
	//	}
	//	//auto &FunctionArray = FAM.getResult<DaedalusAnalysis>(F);
		
		return PreservedAnalyses::all();
	}
}
