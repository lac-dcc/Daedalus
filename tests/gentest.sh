clang -S -Xclang -emit-llvm "$1.c" -o "$1.ll"
# opt -S -passes=mem2reg "$1.ll" -o "$1.ll"
