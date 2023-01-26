#!/bin/bash

if [[ "$#" -ne "3" ]]; then
        echo "Usage: set_reset_method.sh vendorid deviceid method"
        exit -1
fi

v=$1
d=$2
m=$3

for dir in $(ls -d /sys/bus/pci/devices/*);
do
        vendor=`cat "$dir/vendor"`
        device=`cat "$dir/device"`
        if [[ "$vendor" == "0x$v" ]]; then
                if [[ "$device" == "0x$d" ]]; then
                        echo $m > "$dir/reset_method"
                        exit 0
                fi
        fi
done
exit -1
