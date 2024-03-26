# Make sure to build it first
cd build
make
cd ..
opt -load-pass-plugin build/lib/libdaedalus.so -passes=daedalus -disable-output "$1" -debug
