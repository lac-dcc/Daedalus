#include "../include/debugCommon.h"
#include "llvm/Support/Debug.h"

using namespace llvm;

#define DEBUG_TYPE "daedalus"

template <typename T>
void debugContainerOfInstructions(T &instContainer, std::string msg) {
  uint lineCounter = 0;

  LLVM_DEBUG(dbgs() << "====================" << '\n');
  LLVM_DEBUG(dbgs() << COLOR::YELLOW << msg << COLOR::CLEAN << '\n');
  for (Instruction *E : instContainer) {
    LLVM_DEBUG(dbgs() << '\t' << (lineCounter + 1) << ". " << *E << '\n');
  }
  LLVM_DEBUG(dbgs() << "====================" << '\n');
}
