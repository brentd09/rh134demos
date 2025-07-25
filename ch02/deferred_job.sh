#!/bin/bash

echo > ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +2min < ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +3min < ~/deferred.log
echo -n 'date >> ~/demo.log  ' | at now +4min < ~/deferred.log
