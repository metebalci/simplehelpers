#!/bin/sh
# this can be run in root's crontab
# sudo is needed because some files can be protected

debsums -ce | while read line ; do cp --parents $line <WRITE_HERE_TARGET_DIRECTORY> ; done
