#include "../include/printFunc.h"
#include "llvm/IR/PassManager.h"

using namespace llvm;

bool registerPipeline(StringRef Name, FunctionPassManager &FPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "printFunc") {
        FPM.addPass(printFunc::printFuncPass(errs()));
        return true;
    }
    return false;
}
void registerAnalyses(FunctionAnalysisManager &FAM) {
	FAM.registerPass([] {
		return printFunc::printFuncAnalysis();
	});
}

PassPluginLibraryInfo printFuncPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "printFunc", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
				PB.registerAnalysisRegistrationCallback(registerAnalyses);
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return printFuncPluginInfo();
}
