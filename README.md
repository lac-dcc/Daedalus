# InstructionToFunction-WyvernSlice

The main idea is to make a LLVM Pass that maps Instructions to Program Slices and study the relation between them to compress c++ code.

```shell
mkdir build
cd build
cmake -DWYVERN_INCLUDE={path_to_wyvern} -DLLVM_DIR={path_to_llvm_project} ../
make
cd ..
opt -load-pass-plugin build/lib/libprintFunc.so -passes=printFunc -disable-output examples/foo.ll -debug
```
