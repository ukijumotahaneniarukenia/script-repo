#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://ftp.gnu.org/gnu/datamash/datamash-1.6.tar.gz && \
tar xvf datamash-1.6.tar.gz && \
cd datamash-1.6 && \
./configure --prefix=/usr/local && \
make -j12 && \
make install -j12
