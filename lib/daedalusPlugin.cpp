/**
 *  @file   daedalusPlugin.cpp
 *  @brief  Daedalus Pass' Plugin Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "../include/daedalus.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/LCSSA.h"

using namespace llvm;

/**
 * @brief Registers a custom pipeline for the LLVM pass manager.
 *
 * @details This function registers "daedalus" into passes pipeline.
 * If the name matches "daedalus", it adds specific passes to the MPM.
 *
 * @param Name The name of the pipeline to register.
 * @param MPM The module pass manager to which the pipeline is added.
 * @param Pipeline An array reference to the pipeline elements.
 * @return True if the pipeline was successfully registered, false otherwise.
 */
bool registerPipeline(StringRef Name, ModulePassManager &MPM,
                      ArrayRef<PassBuilder::PipelineElement>) {
  if (Name == "daedalus") {
    MPM.addPass(createModuleToFunctionPassAdaptor(LCSSAPass()));
    MPM.addPass(Daedalus::DaedalusPass());
    return true;
  }
  return false;
}

/**
 * @brief Provides plugin information for the Daedalus LLVM pass manager.
 *
 * @details This function returns the plugin information required by LLVM to
 * load the Daedalus pass. It specifies the LLVM plugin API version, the name of
 * the plugin, and the LLVM version string. Additionally, it registers the
 * pipeline parsing callback.
 *
 * @return A PassPluginLibraryInfo struct containing the plugin information.
 */
PassPluginLibraryInfo DaedalusPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "Daedalus", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(registerPipeline);
          }};
}

/**
 * @brief Retrieves the Daedalus plugin information for LLVM.
 *
 * @details This function provides a weakly linked symbol to retrieve the plugin
 * information, which is required for the plugin to be recognized by LLVM.
 *
 * @return The plugin information for the Daedalus pass.
 */
extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return DaedalusPluginInfo();
}
