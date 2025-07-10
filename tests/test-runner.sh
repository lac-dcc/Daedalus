#!/bin/bash

if [ $# -ne 2 ]; then
  printf "Usage: %s SOURCEFILENAME ARGUMENTS" "$0"
  exit 1
fi

command -v clang >/dev/null 2>&1 || { echo >&2 "clang is required but it's not installed. Aborting..."; exit 1; }
command -v llvm-objcopy >/dev/null 2>&1 || { echo >&2 "llvm-objcopy is required but it's not installed. Aborting..."; exit 1; }
command -v opt >/dev/null 2>&1 || { echo >&2 "opt is required but it's not installed. Aborting..."; exit 1; }
command -v FileCheck >/dev/null 2>&1 || { echo >&2 "FileCheck is required but it's not installed. Aborting..."; exit 1; }

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
SOURCEFOLDER=$(dirname "$SOURCEFILENAME")
BUILDPATH=$(realpath "$SOURCEFOLDER/../build")
BUILDTESTSPATH="$BUILDPATH/tests"
SHAREDOBJECTFILE="$BUILDPATH/lib/libdaedalus.so"
SOURCEFILEBASENAMEWEXT=$(basename "$SOURCEFILENAME" | sed 's/\.[^.]*$//')
SOURCEFILENAMELL="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.ll"
SOURCEFILENAMEDLL="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.d.ll"
SOURCEFILENAMEPARENTLL="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.parent_module.ll"
SLICESREPORTLOGFILE="$BUILDTESTSPATH/${SOURCEFILEBASENAMEWEXT}_slices_report.log"
TRANSFORMATIONLOGFILE="$BUILDTESTSPATH/${SOURCEFILEBASENAMEWEXT}_transformation.log"
ORIGINAL_EXECUTABLE="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.bin"
FINAL_EXECUTABLE="$BUILDTESTSPATH/$SOURCEFILEBASENAMEWEXT.d.bin"

CARGS_FILE="$SOURCEFOLDER/$SOURCEFILEBASENAMEWEXT.cargs"
if [ -f "$CARGS_FILE" ]; then
    EXTRAPARAMS=$(<"$CARGS_FILE")
    echo -e "\nRead extra parameters from ${CARGS_FILE}: $EXTRAPARAMS"
else
    EXTRAPARAMS=""
    echo -e "\nNo extra parameters provided and ${CARGS_FILE} not found. Proceeding without extra parameters."
fi

remove_old_file "$SLICESREPORTLOGFILE"
remove_old_file "$TRANSFORMATIONLOGFILE"
remove_old_file "$ORIGINAL_EXECUTABLE"
remove_old_file "$FINAL_EXECUTABLE"

clang $EXTRAPARAMS -Os -flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt "$SOURCEFILENAME" -o "$ORIGINAL_EXECUTABLE"

llvm-objcopy --dump-section .llvmbc="$SOURCEFILENAMELL" "$ORIGINAL_EXECUTABLE"

opt -S -passes=mem2reg,lcssa "$SOURCEFILENAMELL" -o "$SOURCEFILENAMELL"

if ! opt -stats \
         -debug-only=daedalus,ProgramSlice \
         -passes=daedalus \
         -load-pass-plugin="$SHAREDOBJECTFILE" \
         -dump-dot \
         -S "$SOURCEFILENAMELL" \
         -o "$SOURCEFILENAMEDLL" &>> "$TRANSFORMATIONLOGFILE"; then
    echo "opt exited with error code $?"
    echo "Dumping last 50 lines of the transformation log file:"
    tail --lines 50 "$TRANSFORMATIONLOGFILE"
fi

clang $EXTRAPARAMS -Os "$SOURCEFILENAMEDLL" -o "$FINAL_EXECUTABLE"

if [ -e "$FINAL_EXECUTABLE" ]; then
    "$FINAL_EXECUTABLE" $ARGUMENTS > "${SOURCEFILEBASENAMEWEXT}.output"
fi
if [ -e "$ORIGINAL_EXECUTABLE" ]; then
    "$ORIGINAL_EXECUTABLE" $ARGUMENTS > "${SOURCEFILEBASENAMEWEXT}.reference_output"
fi

# Run FileCheck on both possible files, but only one should succeed (not both), and cmp must succeed too
for CHECKFILE in "$SOURCEFILENAMEPARENTLL" \
                   "$SOURCEFILENAMEDLL" \
                   "$TRANSFORMATIONLOGFILE"; do
    if FileCheck "$SOURCEFOLDER/$SOURCEFILEBASENAMEWEXT.pattern" < "$CHECKFILE"; then
        CHECK=1
        echo -e "\nFileCheck succeed on $CHECKFILE!"
        break
    fi
    echo -e "\nFileCheck failed on $CHECKFILE"
    CHECK=0
done
if [ $CHECK -eq 1 ] && cmp -s "${SOURCEFILEBASENAMEWEXT}.output" "${SOURCEFILEBASENAMEWEXT}.reference_output"; then

    # Also check if the output of the bitcode file is the same as the original one using lli over the .ll files
    if ! diff <(lli "$SOURCEFILENAMELL" $ARGUMENTS) <(lli "$SOURCEFILENAMEDLL" $ARGUMENTS); then
        echo -e "\nlli outputs do not match..."
        exit 1
    else
        echo -e "\nlli outputs match!"
        exit 0
    fi
else
    echo -e "\nFileCheck failed or outputs do not match..."
    exit 1
fi
