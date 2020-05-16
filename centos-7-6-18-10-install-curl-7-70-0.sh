#!/usr/bin/env bash

#https://curl.haxx.se/download.html

cd /usr/local/src && \
curl -LO https://curl.haxx.se/download/curl-7.70.0.tar.gz && \
tar xvf curl-7.70.0.tar.gz && \
./configure && \
make -j12 && \
make -j12 install
