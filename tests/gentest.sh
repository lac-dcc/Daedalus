#!/bin/bash
#
#   Script to generate .ll files for each test's source file
#
#set -e

for i in ./*.c; do
    FILENAME=$(basename "$i")
    LLFILENAME="$(basename "$i" | tr -d 'c$')ll"
    printf "\nTest file name: %s\n" "${FILENAME}"
    clang -S -Xclang -disable-O0-optnone -emit-llvm "${FILENAME}" -o "${LLFILENAME}"
    opt -S -passes=mem2reg,lcssa "${LLFILENAME}" -o "${LLFILENAME}"
done

# for i in ./*.ll; do
#     FILENAME=$(basename "$i")
#     LLFILENAME="$(basename "$i" | tr -d 'd$')"
#     opt -debug-only=daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so "${LLFILENAME}" -o "${LLFILENAME}.d.ll" 2>&1
# done
