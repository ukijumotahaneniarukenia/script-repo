#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://ftp.gnu.org/pub/gnu/findutils/findutils-4.7.0.tar.xz && \
tar xvf findutils-4.7.0.tar.xz && \
cd findutils-4.7.0 && \
./configure && \
make -j12 && \
make -j12 install
