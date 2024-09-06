#!/bin/bash
#
#   Script to generate .ll files for each test's source file
#
for i in ./*.c; do
    FULLFILENAME=$(basename "$i")
    FILENAMEWEXT=${FULLFILENAME%.c}
    LLFILENAME="${FILENAMEWEXT}.ll"
    printf "\nTest source file name: %s" "${FULLFILENAME}"
    printf "\nTest IR file name: %s\n" "${LLFILENAME}"
    clang -S -Xclang -disable-O0-optnone -emit-llvm "${FULLFILENAME}" -o "${LLFILENAME}"
    opt -S -passes=mem2reg,lcssa "${LLFILENAME}" -o "${LLFILENAME}"
    clang "${LLFILENAME}" -o "${FILENAMEWEXT}.bin"
done

for i in ./*.ll; do
    FULLFILENAME=$(basename "$i")
    FILENAMEWEXT=${FULLFILENAME%.ll}
    DLLFILENAME="${FILENAMEWEXT}.d.ll"
    opt -debug-only=daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so "${FULLFILENAME}" -o "${DLLFILENAME}" 2>&1
    clang "${DLLFILENAME}" -o "${FILENAMEWEXT}.d.bin"
done
