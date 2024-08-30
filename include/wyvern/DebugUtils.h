/** 
 *  @file   DebugUtils.h
 *  @brief  Daedalus' Debug Functions Header File
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
 */
void generatePrintf(std::string_view fmt,
                           const std::vector<Value *> &args,
                           IRBuilder<> &builder);
} // namespace llvm