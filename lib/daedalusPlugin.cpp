#include "../include/daedalus.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/LCSSA.h"

using namespace llvm;

bool registerPipeline(StringRef Name, ModulePassManager &MPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "daedalus") {
	MPM.addPass(createModuleToFunctionPassAdaptor(LCSSAPass()));
	MPM.addPass(Daedalus::DaedalusPass());
	// MPM.addPass(FuncMerge());
	// MPM.addPass(Daedalus::Clean());
        return true;
    }
    return false;
}
/*
slice -> rem -> merg -> inline

slice -> merg -> rem
 *
 * */
PassPluginLibraryInfo DaedalusPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "Daedalus", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return DaedalusPluginInfo();
}
