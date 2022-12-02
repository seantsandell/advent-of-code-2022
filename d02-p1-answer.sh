#!/bin/bash

AX=4
AY=8
AZ=3
BX=1
BY=5
BZ=9
CX=7
CY=2
CZ=6

TOTAL=0

while IFS= read -r line; do
    PLAY=$(echo $line | tr -d '[:space:]')
    TOTAL=$(($TOTAL + $PLAY))
    echo $TOTAL
done < input.txt
