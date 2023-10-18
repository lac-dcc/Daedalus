# InstructionToFunction-WyvernSlice

The main idea is to make a LLVM Pass that maps Instructions to Program Slices and study the relation between them to compress c++ code.

```shell
mkdir build
cd build
cmake -DWYVERN_INCLUDE={path_to_wyvern} -DLLVM_DIR={path_to_llvm_project} ../
make
cd ..
opt -load-pass-plugin build/lib/libprintFunc.so -passes=printFunc -disable-output tests/test2.ll -debug
```
After build you can execute comp.sh to compile and use one of ours tests:
``` shell
chmod +x comp.sh
./comp.sh {path_to_test_file}
# ex
./comp.sh tests/test2.ll
```
or recompile and execute by your own:
``` shell
cd build
make
cd ..
opt -load-pass-plugin build/lib/libinstrToSlice.so -passes=its -disable-output {path_to_test_file}
```

