#!/bin/bash

lowers=({a..z})
uppers=({A..Z})
numslower=({1..26})
numsupper=({27..52})

# echo ${lowers[1]}
# echo ${uppers[3]}

# WORK IN PROGRESS
for line in $(cat d03-sample.txt); do
    totalchars=$(echo -n ${line} | wc -m)
    halfchars=$((${totalchars} / 2))
    # nums=$(echo -n $line | tr '[abcdefghij]' '[0-9]')
    nums=$(sed "s/${lowers}/${numsupper}/g" <<< ${line})
    echo "TOTAL CHARS: $totalchars"
    echo "HALF CHARS: $halfchars"
    echo "TRANSLATED: $nums"
    # for i in ${!lowers[@]}; do
    #     echo ${i}
    # done
done
