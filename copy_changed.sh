#!/bin/sh
# this can be run in root's crontab
# sudo is needed because some files can be protected

debsums -ce --ignore-permissions --ignore-obsolete | while read line ; do cp -v --parents $line <WRITE_HERE_TARGET_DIRECTORY> ; done
