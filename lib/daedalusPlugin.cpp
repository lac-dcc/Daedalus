#include "../include/daedalus.h"
#include "llvm/IR/PassManager.h"

using namespace llvm;

bool registerPipeline(StringRef Name, FunctionPassManager &FPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "daedalus") {
        FPM.addPass(Daedalus::DaedalusPass(errs()));
        return true;
    }
    return false;
}
void registerAnalyses(FunctionAnalysisManager &FAM) {
	FAM.registerPass([] {
		return Daedalus::DaedalusAnalysis();
	});
}



PassPluginLibraryInfo DaedalusPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "Daedalus", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
				PB.registerAnalysisRegistrationCallback(registerAnalyses);
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return DaedalusPluginInfo();
}
