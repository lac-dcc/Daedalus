
#include "../include/printFunc.h"
#include "llvm/IR/PassManager.h"

using namespace llvm;

static cl::OptionCategory printFuncCategory("pass options");
static cl::opt<std::string> InputModule(
	cl::Positional,
	cl::desc("<Input module>"),
	cl::value_desc("Input File"),
	cl::init(""), cl::Required,
	cl::cat(printFuncCategory)
);
static cl::opt<std::string> OutputModule(
	"o",
	cl::Positional, cl::desc("<Output module>"),
	cl::value_desc("bitcode filename"), cl::init("out.ll"),
	cl::cat(printFuncCategory)
);

namespace {
	llvm::PreservedAnalyses printFuncRun::run(llvm::Function &F, llvm::FunctionAnalysisManager &FAM){
		if(F.hasName()) errs() << F.getName() << "\n";
		return PreservedAnalyses::all();
	}
}
