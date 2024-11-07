#!/bin/bash
#
#   Script to generate .ll and .bin files for each test file
#
TESTFILENAME=(./*.{c,h,cpp})
VERBOSE=0

remove_old_file() {
    local FILENAME
    FILENAME="$1"
    if [ -e "${FILENAME}" ]; then
        rm "${FILENAME}"
        printf "Old %s file removed...\n" "${FILENAME}"
    fi
}

print_usage() {
    local script_name
    script_name=$(basename "$0")
    echo "Usage: $script_name [-v] [-t TESTFILENAME]..."
    echo ""
    echo "Options:"
    echo "  -h                 Display this help message"
    echo "  -v                 Print verbose info. into terminal"
    echo "  -t TESTFILENAME    Generate files for a specific test. FILE is the test's source file name"
    echo ""
    echo "Description:"
    echo "This script generates IR and executable files by running Daedalus pass over the source codes."
    echo ""
    echo "The script shall print verbose information into a file named after its test, if -v option is"
    echo "not passed."
}

while getopts "t:hv" opt; do
    case ${opt} in
        v) VERBOSE=1 ;;
        t) TESTFILENAME=("$OPTARG") ;;
        h)
            print_usage
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            print_usage
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            print_usage
            exit 1
            ;;
    esac
done

for i in "${TESTFILENAME[@]}"; do
    FULLFILENAME=$(basename "$i")
    FILENAME="${FULLFILENAME%.*}"
    if [ "$FILENAME" = "*" ]; then
        continue;
    fi
    EXT="${FULLFILENAME##*.}"
    case "$EXT" in
        c) FILENAMEWEXT="${FULLFILENAME%.c}" ;;
        cpp) FILENAMEWEXT="${FULLFILENAME%.cpp}" ;;
        h) FILENAMEWEXT="${FULLFILENAME%.h}" ;;
    esac
    LLFILENAME="${FILENAMEWEXT}.ll"
    DLLFILENAME="${FILENAMEWEXT}.d.ll"
    
    printf "\nTest source file name: %s" "${FULLFILENAME}"
    printf "\nTest IR file name: %s\n" "${LLFILENAME}"
    printf "Test IR file name (after Daedalus): %s\n" "${LLFILENAME}"
    
    clang -Os -flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt "${FULLFILENAME}" -o "${LLFILENAME}.bin"
    llvm-objcopy --dump-section .llvmbc="${LLFILENAME}" "${LLFILENAME}.bin"
    opt -S "${LLFILENAME}" -o "${LLFILENAME}"
    if [ -e "${LLFILENAME}" ]; then
        opt -S -passes=mem2reg,lcssa "${LLFILENAME}" -o "${LLFILENAME}"
        
        remove_old_file "${FILENAMEWEXT}.bin"
        clang "${LLFILENAME}" -o "${FILENAMEWEXT}.bin"
        
        if [ $VERBOSE == 0 ]; then
            TESTLOGNAME="${FILENAMEWEXT}_gen.log"
            remove_old_file "${TESTLOGNAME}"
            opt -debug-only=Daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so -S "${LLFILENAME}" -o "${DLLFILENAME}" &>> "${TESTLOGNAME}"
        else
            opt -debug-only=Daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so -S "${LLFILENAME}" -o "${DLLFILENAME}" 2>&1
        fi
        
        if [ -e "${DLLFILENAME}" ]; then
            remove_old_file "${FILENAMEWEXT}.d.bin"
            clang -Os "${DLLFILENAME}" -o "${FILENAMEWEXT}.d.bin"
        fi
    fi
done

if [ $VERBOSE == 0 ]; then
    printf "\nOpt's stderrs appended to .log files\n"
else
    printf "\nOpt's stderrs appended to terminal\n"
fi
