#include "../include/printFunc.h"
#include <llvm-14/llvm/IR/PassManager.h>

using namespace llvm;

bool registerPipeline(StringRef Name, FunctionPassManager &FPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "printFunc") {
        return true;
    }
    return false;
}
void registerAnalyses(FunctionAnalysisManager &FAM) {
	FAM.registerPass([] {
		return printFunc::printFuncAnalysis();
	});
}

PassPluginLibraryInfo btdPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "btd", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
				PB.registerAnalysisRegistrationCallback(registerAnalyses);
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return btdPluginInfo();
}
