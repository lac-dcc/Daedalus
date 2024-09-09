#!/bin/bash
#
#   Script to generate .ll files for each test's source file
#

print_usage() {
    local script_name=$(basename "$0")
    echo "Usage: $script_name [OPTIONS]..."
    echo ""
    echo "Options:"
    echo "  -h    Display this help message"
    echo "  -v    Print verbose info. into terminal"
    echo "  -q    Print verbose info. into file (tests_gen_stderr.log)"
    echo ""
    echo "Description:"
    echo "This script generates IR and executable files by running Daedalus pass over the source codes."
}

if [ "$#" == 0 ]; then
    print_usage
    exit
fi

if [ "$1" == "-h" ]; then
    print_usage
    exit
fi

rm ./*.{bin,ll}
for i in ./*.{c,h,cpp}; do
    FULLFILENAME=$(basename "$i")
    if [ "${FULLFILENAME##*.}" == "c" ]; then
        FILENAMEWEXT=${FULLFILENAME%.c}
    fi
    if [ "${FULLFILENAME##*.}" == "cpp" ]; then
        FILENAMEWEXT=${FULLFILENAME%.cpp}
    fi
    if [ "${FULLFILENAME##*.}" == "h" ]; then
        FILENAMEWEXT=${FULLFILENAME%.h}
    fi
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

    if [ "$1" == "-q" ]; then
        if [ -e "${FILENAMEWEXT}_gen.log" ]; then
            rm ./"${FILENAMEWEXT}_gen.log"
        fi
        opt -debug-only=daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so "${FULLFILENAME}" -o "${DLLFILENAME}" &>> "${FILENAMEWEXT}_gen.log"
    fi

    if [ "$1" == "-v" ]; then
        opt -debug-only=daedalus -passes=daedalus -load-pass-plugin=../build/lib/libdaedalus.so "${FULLFILENAME}" -o "${DLLFILENAME}" 2>&1
    fi

    clang "${DLLFILENAME}" -o "${FILENAMEWEXT}.d.bin"
done

if [ "$1" == "-q" ]; then
    printf "\nOpt's stderrs appended to .log files\n"
fi

if [ "$1" == "-v" ]; then
    printf "\nOpt's stderrs appended to terminal\n"
fi