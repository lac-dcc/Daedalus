#!/bin/bash

SRCFOLDER=$1

rm ./*.d.*

for i in "$SRCFOLDER"/*.ll; do
    FILENAME=$(basename "$i")
    if [ "$(echo "${FILENAME}" | grep -Ev "(\_M)|\_F")"  ]; then
        EXT=".ll"
        NEWFILENAME="${FILENAME%"$EXT"}.d${EXT}"

        printf "\nTest name: %s\n" "${FILENAME}"
        
        opt -load-pass-plugin=../build/lib/libdaedalus.so -passes=daedalus -S "${FILENAME}" -o "${NEWFILENAME}" 2> /dev/null

        # Compare number of instructions
        INSTCOUNT_B=$(opt -disable-output -stats -passes=instcount "${FILENAME}" 2>&1 | awk "/of all types/{print}" | grep -Eo '^[0-9]*\s')
        INSTCOUNT_A=$(opt -disable-output -stats -passes=instcount "${NEWFILENAME}" 2>&1 | awk "/of all types/{print}" | grep -Eo '^[0-9]*\s')
        printf "Number of instructions before Daedalus: %s\n" "${INSTCOUNT_B}"
        printf "Number of instructions after: %s\n" "${INSTCOUNT_A}"

        if [ "$(grep sliceclone "${NEWFILENAME}")" ]; then
            if [ "${INSTCOUNT_A}" -lt "${INSTCOUNT_B}" ]; then
                printf "\033[32mThe number of instructions after Daedalus is LESS than before!\033[0m\n"
            fi
            if [ "${INSTCOUNT_A}" -gt "${INSTCOUNT_B}" ]; then
                printf "\033[31mThe number of instructions after Daedalus is GREATER than before...\033[0m\n"
            fi
        fi
    fi
done
