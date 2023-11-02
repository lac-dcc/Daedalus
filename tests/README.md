# Generating LLVM IR

To generate LLVM IR, for your own tests:
```shell
clang -Xclang -disable-O0-optnone -S -emit-llvm {path_to_input_file} -o {path_to_output_file}
# ex:
clang -Xclang -disable-O0-optnone -S -emit-llvm tests/test2.cpp -o tests/test2.ll
```
and then if you want to add mem2reg optimization:
```shell
opt -S -mem2reg {path_to_input_file}.ll -o {path_to_output_file}.ll
```
Also, you can use gentest.sh to do this:
```shell
chmod +x gentest.sh
./gentest.sh {path_to_input_file} // Without extention, always a C file.
ex:
./gentest.sh test1
```
