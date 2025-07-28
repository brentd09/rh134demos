#!/bin/bash
tar -cf ~/backup.tar /etc
tar -czf ~/backup.tar.gz /etc
tar -cjf ~/backup.tar.bz2 /etc
tar -cJf ~/backup.tar.xz /etc

