#include "../include/daedalus.h"
#include "../include/wyvern/ProgramSlice.cpp"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <memory>
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"

using namespace llvm;
#include <llvm/Pass.h>

bool canOutline(Instruction &I){
	if(isa<BranchInst>(I)) return false; // Branch Instruction have badref
	if(isa<ReturnInst>(I)) return false; // No Return for while, badref
	if(isa<AllocaInst>(I)) return false; // No needed
	if(isa<StoreInst>(I)) return false; // No needed
	if(isa<GetElementPtrInst>(I)) return false; // No needed
	//if(isa<PHINode>(I)) return true;
	return true;
}

namespace Daedalus {
	PreservedAnalyses DaedalusPass::run(Module &M, ModuleAnalysisManager &MAM) {
		std::unordered_map<Instruction *, Function *> instr_Func;
		
		std::set<Function *> FtoMap;	
		for(Function &F: M.getFunctionList()) FtoMap.insert(&F);

		std::unique_ptr<Module> module = std::make_unique<Module>("New_" + M.getName().str(), M.getContext());
		for(Function *F: FtoMap){
			PostDominatorTree PDT;
			PDT.recalculate(*F);
			int i = 0;
			std::set<Instruction *> s;
			std::map<Instruction *, CallInst *> ItoCall;
			std::map<Argument *, Argument *> ArgtoArgcall;
			for(Instruction &I: instructions(F)) {
				if(!canOutline(I)) continue;
				s.insert(&I);
			}
			for(Instruction *I: s){
				dbgs() << "\n SLICING: "; I->print(dbgs()); dbgs() << '\n';
				ProgramSlice ps = ProgramSlice(*I, *F, PDT);
				dbgs() << "\n OUTLING: "; I->print(dbgs()); dbgs() << '\n';
				auto [dps, L] = ps.outline();
				dbgs() << "\n DUMPING: \n FIRST L\n";
				SmallVector<Value *> v;
				for(auto e: dps) {
					auto it = ArgtoArgcall.find(e);
					if(it != ArgtoArgcall.end()) v.push_back(it->second);
					else v.push_back(e);
					// v.push_back(e);
				}
				CallInst *callInst = CallInst::Create(L, v, I->getName(), I->getParent());
				callInst->moveAfter(I);
				ItoCall[I] = callInst;
				Argument *arg = new Argument(I->getType(), I->getName());
				Argument *argcall = new Argument(callInst->getType(), callInst->getName());
				ArgtoArgcall[arg] = argcall;
			//	std::error_code EC;
			//	raw_fd_ostream file("output.ll", EC, sys::fs::OF_Text | sys::fs::OF_Append);
			//	if(EC) {
			//		dbgs() << "\nERROR FILE\n";
			//	}else{
			//		L->print(file);
			//	}
			//	file.close();
			}
			for(auto [I, callInst]: ItoCall){
				I->replaceAllUsesWith(callInst);
				I->eraseFromParent();
			}
			dbgs() << "\n\n END F\n" << *F << "\n\n";
			dbgs() << '\n';
		}
		module->print(dbgs(), nullptr);
		
		dbgs() << "END\n";
		return PreservedAnalyses::all();
	}
}
