#!/usr/bin/env bash
cd /usr/local/src && \
git clone https://github.com/kkos/oniguruma.git && \
cd oniguruma && \
autoreconf -vfi && \
./configure --prefix=/usr/local --enable-shared && \
make -j12 && \
make -j12 install
