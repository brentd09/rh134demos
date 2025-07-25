#!/bin/bash

name='Brent'
echo My name is $name
echo to retrieve the contents of the name variable I use \$name
echo single quotes \'  also make the text literal '$name'
echo "double quotes \" allows variable expansion, may name is $name"
echo 
echo 'If variable parentpath=/home/brent/' 
echo and I wanted to add a filename to the end of the path
echo I could not do this '$parentpathfilename'
echo instead I would use '${parentpath}filename'
parentpath=/home/brent/
echo ${parentpath}filename
