set -e
# Make sure to build it first
make -b -C build > /dev/null
opt -passes=daedalus -load-pass-plugin build/lib/libdaedalus.so "$1" -debug-only=daedalus -o "$1_F.ll" 2>&1
