set -e
# Make sure to build it first
make -b -C build > /dev/null
opt -passes=daedalus -load-pass-plugin build/lib/libdaedalus.so -disable-output "$1" -debug-only=daedalus
