# InstructionToFunction-WyvernSlice

The main idea of this project is to compress cpp code, by using some relation(hashfunction, maybe graphs)

The main idea is to make a LLVM Passe that map Instruction to Program Slices and study the relation between them to compress c++ code.

```shell
mkdir build
cd build
cmake -DWYVERN_INCLUDE={path_to_wyvern} -DLLVM_DIR={path_to_llvm_project} ../
make
cd ..
opt -load-pass-plugin build/lib/libprintFunc.so -passes=printFunc -disable-output examples/foo.ll -debug


```
