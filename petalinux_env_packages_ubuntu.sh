
# tested on a Ubuntu 16.04 lxd container
# based on Xilinx UG 1144
# https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug1144-petalinux-tools-reference-guide.pdf

# need to dpkg --add-architecture i386 before if needed

apt-get install build-essential dos2unix libncurses5-dev zlib1g-dev zlib1g-dev:i386 libssl-dev flex bison diffstat chrpath socat xterm autoconf libtool-bin unzip texinfo gcc-multilib libsdl1.2-dev pax
