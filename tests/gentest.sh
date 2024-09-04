#!/bin/bash

clang -S -Xclang -disable-O0-optnone -emit-llvm "$1.c" -o "$1.ll"

if [ -f "$1.ll" ]; then
    opt -S -passes=mem2reg "$1.ll" -o "$1.ll"
    opt -S -passes=lcssa "$1.ll" -o "$1.ll"
else
    printf "\n%s did not compile...\n\n" "$1.c"
fi
