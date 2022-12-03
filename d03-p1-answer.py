#!/usr/bin/env python3

import os
import sys
import string

# input = os.path.join(sys.path[0], "d03-sample.txt")
input = os.path.join(sys.path[0], "d03-input.txt")
each = open(input).read().strip().split('\n')
all_packs = [x for x in each]

count = 0

# Return pack items from each compartment
def compartments(pack: list):
    middle = len(pack)//2
    return [pack[:middle], pack[middle:]]

# Find matches between each compartment
for item in all_packs:
    matches = set(compartments(item)[0]).intersection(compartments(item)[1])
    # print(string.ascii_letters)
    index = string.ascii_letters.index(*matches)
    count = count + index + 1

print("The number of similar items is:", count)
