# -*- coding: utf-8 -*-


import sys

line =[ x for x in sys.stdin.readline().strip()[::-1]]

s = sorted(list(set(line)), key=line.index)

t = 0
for i in s:
    t = t*10 + int(i)
print t
