# Make sure to build it first
make -C build > /dev/null
opt -load-pass-plugin build/lib/libdaedalus.so -passes=daedalus -disable-output "$1" -debug
