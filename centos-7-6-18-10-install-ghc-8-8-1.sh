#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://downloads.haskell.org/$HOMEghc/8.8.1/ghc-8.8.1-x86_64-centos7-linux.tar.xz && \
cd /usr/local/src && \
tar xvf ghc-8.8.1-x86_64-centos7-linux.tar.xz && \
cd ghc-8.8.1 &&\
./configure --prefix=/usr/local && \
make -j12 install
