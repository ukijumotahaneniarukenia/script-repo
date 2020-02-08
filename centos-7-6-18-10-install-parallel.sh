#!/usr/bin/env bash

TGT=$(curl -sSL http://ftp.gnu.org/gnu/parallel | grep -Po 'parallel-[0-9]{8}' | sort | uniq | tail -n1)

cd /usr/local/src && \
yum install -y bzip2 && \
curl -LO http://ftp.gnu.org/gnu/parallel/parallel-latest.tar.bz2 && \
tar jxf parallel-latest.tar.bz2 && \
cd $TGT && \
./configure && \
make -j12 && \
make -j12 install
