#!/bin/bash

# REMEMBER: sudo -i before running these commands

tuned_adm active
tuned_adm list
tuned_adm recommend

cd /usr/lib/tuned/
ls

less /etc/tuned/tuned-main.conf



