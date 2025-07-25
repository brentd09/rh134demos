#!/bin/bash

for name in root student devops; do
  id $name
done

for file in $(ls -1 /); do
  echo $file
done
