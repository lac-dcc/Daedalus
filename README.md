# Daedalus

Daedalus is a LLVM Pass that maps Instructions to Program Slices and study the relation between them to compress LLVM IR code.

```shell
mkdir build
cd build
cmake -DLLVM_DIR={path_to_llvm_project} ../
make
cd ..
opt -load-pass-plugin build/lib/libdaedalus.so -passes=daedalus -disable-output tests/test1.ll
```
After build you can execute comp.sh to compile and use one of ours tests:
``` shell
chmod +x comp.sh
./comp.sh {path_to_test_file}
# ex
./comp.sh tests/test1.ll
```
or recompile and execute by your own:
``` shell
cd build
make
cd ..
opt -load-pass-plugin build/lib/libdaedalus.so -passes=daedalus -disable-output {path_to_test_file}
```

