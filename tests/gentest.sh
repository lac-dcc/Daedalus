#!/bin/bash
#
#   Script to generate .ll files for each test's source file
#
set -e

clang -S -Xclang -disable-O0-optnone -emit-llvm "$1.c" -o "$1.ll"

opt -S -passes=mem2reg,lcssa "$1.ll" -o "$1.ll"

opt -debug-only=daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so "$1.ll" -o "$1.d.ll" 2>&1
