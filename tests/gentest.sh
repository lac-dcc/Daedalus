clang -S -Xclang -disable-O0-optnone -emit-llvm "$1.c" -o "$1.ll"
opt -S -mem2reg "$1.ll" -o "$1.ll"
