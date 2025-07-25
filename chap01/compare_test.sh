#!/bin/bash

test 1 -gt 0
echo $?

[[ 1 -gt 0 ]]
echo $?

test bob == bob
echo $?

[[ bob == bob ]]
echo $?


test 1 -gt 10
echo $?

[[ 1 -gt 10 ]]
echo $?

test bob == Bob
echo $?

[[ bob == Bob ]]
echo $?
