#!/usr/bin/env bash
cd /usr/local/src
curl -sSLO https://ftp.gnu.org/gnu/gdb/gdb-9.1.tar.gz
tar xvf gdb-9.1.tar.gz
cd gdb-9.1
mkdir build
cd build
/usr/local/src/gdb-9.1/configure
make -j12
make -j12 install
gdb -v #cmakeビルド方式っぽい
