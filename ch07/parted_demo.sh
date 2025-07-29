#!/bin/bash

lsblk
parted /dev/vdd
print
mklabel gpt
print
mkpart
first
xfs
0MiB
2000MiB
Y
i
print
quit
lsblk

parted /dev/vdd
print 
mkpart second xfs 2001mib 3000mib
print 
