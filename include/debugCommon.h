#ifndef DEBUG_COMMON_H
#define DEBUG_COMMON_H

#include "llvm/IR/Instructions.h"
#include "llvm/Support/Debug.h"
#include <string>

#define dbg(msg) LLVM_DEBUG(dbgs() << msg << '\n')
#define LOG_SET_INFO(parent_fn, set_var) \
    dbgs()  << #parent_fn << ":" << #set_var \
            << " -- size:" << set_var.size() << "\n";

namespace COLOR {
const std::string BLACK = "\033[30m";
const std::string RED = "\033[31m";
const std::string GREEN = "\033[32m";
const std::string YELLOW = "\033[33m";
const std::string BLUE = "\033[34m";
const std::string MAGENTA = "\033[35m";
const std::string CYAN = "\033[36m";
const std::string WHITE = "\033[37m";
const std::string CLEAN = "\033[0m";

}; // namespace COLOR

template <typename T>
void debugContainerOfInstructions(T &instContainer, std::string msg);
#endif
