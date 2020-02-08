#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://prdownloads.sourceforge.net/tcl/tcl8.6.10-src.tar.gz && \
tar xvf tcl8.6.10-src.tar.gz && \
cd tcl8.6.10 && \
cd unix && \
export CFLAGS=-DTCL_UTF_MAX=6 && \
export MAKEFLAGS=-j5 && \
./configure --prefix=/usr/local --enable-threads --enable-shared --enable-symbols --enable-64bit --enable-langinfo --enable-man-symlinks && \
make -j12 && \
make -j12 install
