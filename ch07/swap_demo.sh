#!/bin/bash

parted /dev/vdd
mkpart swap1 linux-swap 2001mib 3000mib
print
quit
mkswap /dev/vdd2
lsblk -o UUID,NAME,SIZE,PARTLABEL
swapon /dev/vdd2
