# Make sure to build it first
make -C build > /dev/null
opt -passes=daedalus -load-pass-plugin build/lib/libdaedalus.so -disable-output "$1"
