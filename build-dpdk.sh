#!/bin/bash

# Tested on Ubuntu 22.04.1 with DPDK 22.11.1

# required dependencies for dpdk
sudo apt install build-essential meson ninja-build python3-pyelftools libnuma-dev
# required dependency for dumpcap app
sudo apt install libpcap-dev
# required dependencies for mlx4 driver
# documentation says rdma-core package but it does not install libmlx4 and libibverbs
# libibverbs1 package has libibverbs
# ibverbs-providers package has libmlx4
# during build infiniband/verbs.h is required which is in libibverbs-dev
sudo apt install libibverbs1 ibverbs-providers libibverbs-dev
# fix symlinks for mlx4 and ibverbs libraries
# otherwise dpdk does not build mlx4 because of missing dependency
sudo ln -s /usr/lib/x86_64-linux-gnu/libmlx4.so.1 /usr/lib/x86_64-linux-gnu/libmlx4.so
sudo ln -s /usr/lib/x86_64-linux-gnu/libibverbs.so.1 /usr/lib/x86_64-linux-gnu/libibverbs.so

set -e
WD=`pwd`
if [ ! -d "dpdk" ]; then
	echo "no dpdk dir"
	exit 1
fi
rm -rf $WD/dpdk-build
cd dpdk
# build for this platform (native)
# build all examples
meson setup -Dplatform=native -Dexamples=all ../dpdk-build
cd $WD/dpdk-build
ninja
sudo ninja install
sudo ldconfig
cd $WD
