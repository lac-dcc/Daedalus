echo "make sure to build it first!"
cd build
make
cd ..
opt -load-pass-plugin build/lib/libinstrToSlice.so -passes=its -disable-output examples/test.ll
