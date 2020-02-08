#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO http://ftp.gnu.org/gnu/sed/sed-4.7.tar.xz && \
tar xvf sed-4.7.tar.xz && \
cd sed-4.7 && \ 
./configure --prefix=/usr/local && \
make -j12 && \
make -j12 install
