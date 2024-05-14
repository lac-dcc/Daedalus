#include "../include/daedalus.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/LCSSA.h"

using namespace llvm;

bool registerPipeline(StringRef Name, ModulePassManager &MPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
    if (Name == "daedalus") {
		MPM.addPass(createModuleToFunctionPassAdaptor(LCSSAPass()));
		MPM.addPass(LCSSAPass());
		MPM.isRequired();
        MPM.addPass(Daedalus::DaedalusPass());
        return true;
    }
    return false;
}

PassPluginLibraryInfo DaedalusPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "Daedalus", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(registerPipeline);
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return DaedalusPluginInfo();
}
