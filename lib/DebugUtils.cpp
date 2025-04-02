/** 
 *  @file   DebugUtils.cpp
 *  @brief  Daedalus' Debug Functions Source File
 *  @author Compilers Lab (UFMG)
 *  @date   2024-07-08
 ***********************************************/
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instruction.h"

#include <string>
#include <vector>

namespace llvm {

/**
 * @brief Generates a call to the printf function and flushes the output buffer.
 * 
 * @details This function creates a call to the `printf` function using the given format string
 * and arguments, and then calls `fflush` to ensure the output is written immediately.
 * It leverages LLVM's `IRBuilder` to construct the necessary LLVM IR instructions.
 * 
 * @param fmt The format string to be used with `printf`.
 * @param args A vector of LLVM values representing the arguments to be passed to `printf`.
 * @param builder The LLVM IRBuilder used to generate the instructions.
 */
void generatePrintf(std::string_view fmt,
                           const std::vector<llvm::Value *> &args,
                           llvm::IRBuilder<> &builder) {
  Module *M = builder.GetInsertBlock()->getParent()->getParent();

  Type *i32 = builder.getInt32Ty();
  PointerType *i8 = builder.getInt8PtrTy();
  ConstantPointerNull *nullPtr = ConstantPointerNull::get(i8);
  FunctionType *printfType = FunctionType::get(i32, true);
  FunctionCallee printfFunction = M->getOrInsertFunction("printf", printfType);
  FunctionType *fflushType = FunctionType::get(i32, {i8}, false);
  FunctionCallee fflushFunction = M->getOrInsertFunction("fflush", fflushType);

  Constant *ptr = builder.CreateGlobalStringPtr(fmt);

  std::vector<llvm::Value *> args_ = {ptr};
  for (auto *arg : args) {
    args_.emplace_back(arg);
  }

  builder.CreateCall(printfFunction, args_, "_daedalus_debug_print");
  builder.CreateCall(fflushFunction, {nullPtr}, "_daedalus_debug_fflush");
}

} // namespace llvm