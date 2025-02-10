#!/bin/bash

if [ $# -ne 2 ]; then
  printf "Usage: %s SOURCEFILENAME ARGUMENTS" "$0"
  exit 1
fi

command -v clang >/dev/null 2>&1 || { echo >&2 "clang is required but it's not installed. Aborting..."; exit 1; }
command -v llvm-objcopy >/dev/null 2>&1 || { echo >&2 "llvm-objcopy is required but it's not installed. Aborting..."; exit 1; }
command -v opt >/dev/null 2>&1 || { echo >&2 "opt is required but it's not installed. Aborting..."; exit 1; }

remove_old_file() {
    local FILENAME
    FILENAME="$1"
    if [ -e "${FILENAME}" ]; then
        rm "${FILENAME}"
        printf "Old %s file removed...\n" "${FILENAME}"
    fi
}

SOURCEFILENAME="$1"
ARGUMENTS="$2"
BUILDPATH=$(realpath "$(dirname "$SOURCEFILENAME")/../build")
BUILDTESTSPATH="$BUILDPATH/tests"
SHAREDOBJECTFILE="$BUILDPATH/lib/libdaedalus.so"
SOURCEFILEBASENAMEWEXT=$(basename "$SOURCEFILENAME" | sed 's/\.[^.]*$//')
SOURCEFILENAMELL="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.ll"
SOURCEFILENAMEDLL="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.d.ll"
SLICESREPORTLOGFILE="$BUILDTESTSPATH/${SOURCEFILEBASENAMEWEXT}_slices_report.log"
TRANSFORMATIONLOGFILE="$BUILDTESTSPATH/${SOURCEFILEBASENAMEWEXT}_transformation.log"
ORIGINAL_EXECUTABLE="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.bin"
FINAL_EXECUTABLE="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.d.bin"

remove_old_file "$SLICESREPORTLOGFILE"
remove_old_file "$TRANSFORMATIONLOGFILE"

clang -Os -flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt "$SOURCEFILENAME" -o "$ORIGINAL_EXECUTABLE"
llvm-objcopy --dump-section .llvmbc="$SOURCEFILENAMELL" "$ORIGINAL_EXECUTABLE"
opt -S -passes=mem2reg,lcssa "$SOURCEFILENAMELL" -o "$SOURCEFILENAMELL"
opt -stats -debug-only=Daedalus -passes=daedalus -load-pass-plugin="$SHAREDOBJECTFILE" -S "$SOURCEFILENAMELL" -o "$SOURCEFILENAMEDLL" &>> "$TRANSFORMATIONLOGFILE"
clang -Os "$SOURCEFILENAMEDLL" -o "$FINAL_EXECUTABLE"

if [ -e "$FINAL_EXECUTABLE" ]; then
    "$FINAL_EXECUTABLE" "$ARGUMENTS" > "${SOURCEFILEBASENAMEWEXT}.output"
fi
if [ -e "$ORIGINAL_EXECUTABLE" ]; then
    "$ORIGINAL_EXECUTABLE" "$ARGUMENTS" > "${SOURCEFILEBASENAMEWEXT}.reference_output"
fi

if cmp -s "${SOURCEFILEBASENAMEWEXT}.output" "${SOURCEFILEBASENAMEWEXT}.reference_output"; then
    exit 0
else
    exit 1
fi
