Docker-related files
=================
Mantained by Shihta

Build nsenter (util-linux) in Ubuntu-14.04
```sh
apt-get install libncurses5-dev libslang2-dev gettext zlib1g-dev libselinux1-dev debhelper lsb-release pkg-config po-debconf autoconf automake autopoint libtool
wget https://www.kernel.org/pub/linux/utils/util-linux/v2.27/util-linux-2.27.1.tar.xz
tar -Jxf util-linux-2.27.1.tar.xz
./autogen.sh
./configure --without-python
make -j4
```
