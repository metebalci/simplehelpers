#!/bin/bash

vmid="$1"
phase="$2"

if [[ "$phase" == "post-start" ]]; then
    main_pid="$(< /run/qemu-server/$vmid.pid)"

    cpuset="$(< /etc/pve/qemu-server/$vmid.cpuset)"

    taskset --cpu-list --all-tasks --pid "$cpuset" "$main_pid"
fi
