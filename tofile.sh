# Make sure to build it first
make -C build
opt -load-pass-plugin build/lib/libdaedalus.so -passes=daedalus -S $1.ll -o $1_F.ll
opt -passes=mergefunc -S $1_F.ll -o $1_M.ll
