#!/bin/bash

if [ "$#" -ne 2 ]; then
        echo "usage: add_taskset_hook <vmid> <numanode>"
        exit 1
fi

vmid=$1
numanode=$2

cpuset=`numactl -H | grep "node $numanode cpus" | cut -d":" -f2 | awk '{$1=$1};1' | tr -s '[:blank:]' ','`

echo "$cpuset" > /etc/pve/qemu-server/$vmid.cpuset

qm set $vmid --hookscript local:snippets/taskset-hook.sh
