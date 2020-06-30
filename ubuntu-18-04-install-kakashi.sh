#!/usr/bin/env bash

curl -fsSLO http://kakasi.namazu.org/stable/kakasi-2.3.6.tar.gz

tar xvf kakasi-2.3.6.tar.gz

cd kakasi-2.3.6

./configure


make -j12

make -j12 install
