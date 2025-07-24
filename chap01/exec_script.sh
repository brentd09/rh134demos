#!/bin/bash

if [[ -f $1 ]];then 
  chmod +x $1
else 
  echo USAGE: $0 filepath
  echo This will add exec rights to the script
fi
