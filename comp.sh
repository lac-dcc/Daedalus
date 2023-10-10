
#cmake ../ -DLLVM_DIR="/home/danielaugusto/llvm-project"
cd build
make
cd ..
opt -load-pass-plugin build/lib/libprintFunc.so -passes=printFunc -disable-output examples/foo.ll -debug
