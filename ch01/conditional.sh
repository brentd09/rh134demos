#!/bin/bash

if [[ $1 == 'Brent' ]]; then
  echo you typed $1 as your argument
elif [[ $1 == 'Peter' ]]; then 
  echo you typed $1 as your argument
else
  echo you did not type Peter or Brent as the argument
fi


filepath='/etc/shadow'
if [[ -f $filepath ]];then
  echo the file $filepath exists
fi

if [[ -w $filepath ]]; then
  echo $filepath is writable
else 
  echo $filepath is not writable
fi

