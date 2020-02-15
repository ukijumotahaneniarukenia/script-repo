#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz && \
tar xvf jq-1.6.tar.gz && \
cd jq-1.6 && \
./configure && \
make -j12 && \
make -j12 install
