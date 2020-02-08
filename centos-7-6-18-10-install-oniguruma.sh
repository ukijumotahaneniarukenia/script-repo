#!/usr/bin/env bash
yum install -y autoreconf libtool && \
cd /usr/local/src && \
git clone https://github.com/kkos/oniguruma.git && \
cd oniguruma && \
autoreconf -vfi && \
./configure --prefix=/usr/local --enable-shared && \
make -j12 && \
make -j12 install
