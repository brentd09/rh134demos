#!/bin/bash

echo > ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +2min < ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +3min < ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +4min < ~/deferred.log

lastjobnumber=$(atq | tail -n 1 | cut -f1)
at -c $lastjobnumber

atq


