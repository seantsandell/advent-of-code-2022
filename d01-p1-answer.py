#!/usr/bin/env python3

elves = open("input.txt", "r").read().split("\n\n")
totals = []
for elf in elves:
    totals.append(sum([int(x) for x in elf.split("\n")]))
print("Part 1:", max(totals))
# Added this line for part 2:
print("Part 2:", sum(sorted(totals)[-3:]))
