#!/usr/bin/env bash
cd /usr/local/src
curl -sSLO https://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.gz
tar xvf texinfo-6.7.tar.gz
cd texinfo-6.7
./configure
make -j12
make -j12 install
which makeinfo #makeinfoコマンドはtexinfoソースに梱包
