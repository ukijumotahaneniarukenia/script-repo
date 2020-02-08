#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://www.sqlite.org/2019/sqlite-autoconf-3300000.tar.gz && \
tar xvf sqlite-autoconf-3300000.tar.gz && \
cd sqlite-autoconf-3300000 && \
./configure --prefix=/usr/local --enable-readline && \
make -j12 && \
make -j12 install
