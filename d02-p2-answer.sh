#!/bin/bash

# A=ROCK=1
# B=PAPER=2
# C=SCISSORS=3

# LOSE=0
# DRAW=3
# WIN=6

AX=3
AY=4
AZ=8
BX=1
BY=5
BZ=9
CX=2
CY=6
CZ=7

TOTAL=0

while IFS= read -r line; do
    PLAY=$(echo $line | tr -d '[:space:]')
    TOTAL=$(($TOTAL + $PLAY))
    echo $TOTAL
done < input.txt
