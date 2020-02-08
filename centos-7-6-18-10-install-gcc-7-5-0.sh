#!/usr/bin/env bash
yum install -y lbzip gcc-c++ libtool makeinfo file && \
cd /usr/local/src && \
curl -LO http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-7.5.0/gcc-7.5.0.tar.gz && \
tar xvf gcc-7.5.0.tar.gz && \
cd gcc-7.5.0 && \
./contrib/download_prerequisites && \
./configure --enable-languages=c,c++ --prefix=/usr/local --disable-bootstrap --disable-multilib && \
make -j12 && \
make -j12 install
