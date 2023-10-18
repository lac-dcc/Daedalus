#include "../include/instrToSlice.h"
#include "llvm/IR/PassManager.h"

using namespace llvm;

bool registerPipeline(StringRef Name, FunctionPassManager &FPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "its") {
        FPM.addPass(instrToSlice::instrToSlicePass(errs()));
        return true;
    }
    return false;
}
void registerAnalyses(FunctionAnalysisManager &FAM) {
	FAM.registerPass([] {
		return instrToSlice::instrToSliceAnalysis();
	});
}

PassPluginLibraryInfo instrToSlicePluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "printFunc", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
				PB.registerAnalysisRegistrationCallback(registerAnalyses);
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return instrToSlicePluginInfo();
}
