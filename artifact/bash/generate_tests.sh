#!/bin/bash
#
#   Script to generate .ll and .bin files for each test file
#
VERBOSE=0
INPUT_DIR=""
OUTPUT_DIR=""
TESTFILENAME=()

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
    echo "Usage: $script_name [-v] [-t TESTFILENAME] -i INPUT_DIR -o OUTPUT_DIR ..."
    echo ""
    echo "Options:"
    echo "  -h                 Display this help message"
    echo "  -v                 Print verbose info. into terminal"
    echo "  -i INPUT_DIR       Directory containing input test files"
    echo "  -o OUTPUT_DIR      Directory where all generated files will be exported"
    echo "  -t TESTFILENAME    Run the script for a specific test file (optional, searches in INPUT_DIR)"
    echo ""
    echo "Description:"
    echo "This script generates IR and executable files by running Daedalus pass over the source codes."
    echo ""
    echo "The script shall print verbose information into a file named after its test, if -v option is"
    echo "not passed."
}

while getopts "i:o:t:hv" opt; do
    case ${opt} in
        v) VERBOSE=1 ;;
        i) INPUT_DIR="$OPTARG" ;;
        o) OUTPUT_DIR="$OPTARG" ;;
        t) TESTFILENAME=("$OPTARG") ;; # Specific test file
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

# Check if INPUT_DIR is provided
if [ -z "$INPUT_DIR" ]; then
    echo "Error: INPUT_DIR is a mandatory argument."
    print_usage
    exit 1
fi

# Check if OUTPUT_DIR is provided
if [ -z "$OUTPUT_DIR" ]; then
    echo "Error: OUTPUT_DIR is a mandatory argument."
    print_usage
    exit 1
fi

# Ensure INPUT_DIR exists
if [ ! -d "$INPUT_DIR" ]; then
    echo "Error: INPUT_DIR does not exist: $INPUT_DIR"
    exit 1
fi

# Ensure OUTPUT_DIR exists
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
    echo "Created output directory: $OUTPUT_DIR"
fi

# If a specific test file is provided, search for it in the input directory
if [ ${#TESTFILENAME[@]} -ne 0 ]; then
    FOUND_FILE=""
    for ext in c cpp; do
        if [ -f "$INPUT_DIR/${TESTFILENAME[0]}.$ext" ]; then
            FOUND_FILE="$INPUT_DIR/${TESTFILENAME[0]}.$ext"
            break
        fi
    done

    if [ -z "$FOUND_FILE" ]; then
        echo "Error: File ${TESTFILENAME[0]}.c or ${TESTFILENAME[0]}.cpp not found in $INPUT_DIR."
        exit 1
    fi

    TESTFILENAME=("$FOUND_FILE")
else
    # If no specific test file is provided, process all files in the input directory
    TESTFILENAME=()
    for ext in c cpp; do
        for file in "$INPUT_DIR"/*.$ext; do
            [ -e "$file" ] && TESTFILENAME+=("$file")
        done
    done
fi

# Change to the output directory
cd "$OUTPUT_DIR" || { echo "Failed to change to output directory: $OUTPUT_DIR"; exit 1; }

for i in "${TESTFILENAME[@]}"; do
    if [ ! -f "$i" ]; then
        echo "Warning: File $i does not exist. Skipping."
        continue
    fi

    FULLFILENAME=$(basename "$i")
    FILENAME="${FULLFILENAME%.*}"
    EXT="${FULLFILENAME##*.}"
    case "$EXT" in
        c) FILENAMEWEXT="${FULLFILENAME%.c}" ;;
        cpp) FILENAMEWEXT="${FULLFILENAME%.cpp}" ;;
        *) echo "Unsupported file type: $FULLFILENAME. Skipping."; continue ;;
    esac
    LLFILENAME="${FILENAMEWEXT}.ll"
    DLLFILENAME="${FILENAMEWEXT}.d.ll"

    # Try reading ${FILENAMEWEXT}.cargs for extra parameters
    CARGS_FILE="${INPUT_DIR}/${FILENAMEWEXT}.cargs"
    if [ -f "$CARGS_FILE" ]; then
        EXTRAPARAMS=$(<"$CARGS_FILE")
        echo -e "\nRead extra parameters from ${CARGS_FILE}: $EXTRAPARAMS"
    else
        EXTRAPARAMS=""
        echo -e "\nNo extra parameters provided and ${CARGS_FILE} not found. Proceeding without extra parameters."
    fi

    printf "Test source file name: %s" "${FULLFILENAME}"
    printf "\nTest IR file name: %s\n" "${LLFILENAME}"
    printf "Test IR file name (after Daedalus): %s\n" "${LLFILENAME}"

    clang $EXTRAPARAMS -Os -flto -fuse-ld=lld -Wl,--plugin-opt=-lto-embed-bitcode=post-merge-pre-opt "$i" -o "${LLFILENAME}.bin"
    llvm-objcopy --dump-section .llvmbc="${LLFILENAME}" "${LLFILENAME}.bin"
    opt -S "${LLFILENAME}" -o "${LLFILENAME}"
    if [ -e "${LLFILENAME}" ]; then
        opt -S -passes=mem2reg,lcssa,break-crit-edges "${LLFILENAME}" -o "${LLFILENAME}"
        
        remove_old_file "${FILENAMEWEXT}_slices_report.log"
        remove_old_file "${FILENAMEWEXT}.bin"
        clang $EXTRAPARAMS "${LLFILENAME}" -o "${FILENAMEWEXT}.bin"
        
        if [ $VERBOSE == 0 ]; then
            TESTLOGNAME="${FILENAMEWEXT}_transformation.log"
            remove_old_file "${FILENAMEWEXT}_slices_report.log" # delete old report file
            remove_old_file "${TESTLOGNAME}"
            opt -stats -debug-only=daedalus,ProgramSlice,PHIGateAnalyzer -passes=daedalus -load-pass-plugin=$HOME/src/github/Daedalus/build/lib/libdaedalus.so -S "${LLFILENAME}" -o "${DLLFILENAME}" &>> "${TESTLOGNAME}"
        else
            opt -stats -debug-only=daedalus,ProgramSlice,PHIGateAnalyzer -passes=daedalus -load-pass-plugin=$HOME/src/github/Daedalus/build/lib/libdaedalus.so -S "${LLFILENAME}" -o "${DLLFILENAME}" 2>&1
        fi
        
        if [ -e "${DLLFILENAME}" ]; then
            remove_old_file "${FILENAMEWEXT}.d.bin"
            clang $EXTRAPARAMS -Os "${DLLFILENAME}" -o "${FILENAMEWEXT}.d.bin"
        fi
    fi
done

if [ $VERBOSE == 0 ]; then
    printf "\nOpt's stderrs appended to .log files\n"
else
    printf "\nOpt's stderrs appended to terminal\n"
fi