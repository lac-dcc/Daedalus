# Generating LLVM IR

To generate LLVM IR, for your own tests:
```shell
clang -Xclang -disable-O0-optnone -S -emit-llvm {path_to_input_file} -o {path_to_output_file}
# ex:
clang -Xclang -disable-O0-optnone -S -emit-llvm tests/test2.cpp -o tests/test2.ll
```
