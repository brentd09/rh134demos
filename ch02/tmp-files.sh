#!/bin/bash

# Most Common tmpfiles.d Directives

# Directive     Purpose                           Common Use Case
# ----------------------------------------------------------------
# d             Create a directory                Used to ensure runtime directories exist.
# f             Create a regular file             For creating placeholder or config files at boot.
# r             Remove a file or directory        Used to clean up temporary files or directories.
# R             Recursively remove directories    For cleaning up entire temporary directory trees.
# z             Adjust ownership and permissions  Ensures correct ownership/permissions on existing paths.
# Z             Like z, but resets SELinux        Common in SELinux-enabled systems like RHEL.
# x             Ignore a path                     Used to exclude specific paths from cleanup or modification.

echo d /demo/tmp 0755 root root - > /etc/tmpfiles.d/demo.conf
echo r /demo/tmp/* - - - 1m >>  /etc/tmpfiles.d/demo.conf


# Here is what the time specifiers mean:
# --------------------------------------
# m = minutes
# h = hours
# d = days
# w = weeks
# M = months
# y = years
