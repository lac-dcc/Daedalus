#!/bin/bash

SRCFOLDER=$1

rm ./*.d.*

for i in "$SRCFOLDER"/*.ll; do
    FILENAME=$(basename "$i")
    if [ "$(echo "${FILENAME}" | grep -Ev "(\_M)|\_F")"  ]; then
        EXT=".ll"
        NEWFILENAME="${FILENAME%"$EXT"}.d${EXT}"

        printf "\nTest name: %s\n" "${FILENAME}"
        
        opt -load-pass-plugin=/home/rafackstein/src/github/Daedalus/build/lib/libdaedalus.so -passes=daedalus -S "${FILENAME}" -o "${NEWFILENAME}" 2> /dev/null

        if [ "$(grep sliceclone "${FILENAME}")" ]; then
            # Compare number of instructions
            INSTCOUNT_B=$(opt -disable-output -stats -passes=instcount "${FILENAME}" 2>&1 | awk "/of all types/{print}" | grep -Eo '^[0-9]*\s')
            INSTCOUNT_A=$(opt -disable-output -stats -passes=instcount "${NEWFILENAME}" 2>&1 | awk "/of all types/{print}" | grep -Eo '^[0-9]*\s')
            if [ "${INSTCOUNT_A}" -lt "${INSTCOUNT_B}" ]; then
                printf "The test's number of instructions after Daedalus is less than before!\n"
                printf "Number of instructions before: %s\n" "${INSTCOUNT_B}"
                printf "Number of instructions after: %s\n" "${INSTCOUNT_A}"
            fi
        fi
    fi
done
