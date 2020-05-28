#!/usr/bin/env bash
cd /usr/local/src && curl -LO https://dl.google.com/go/go1.4.3.linux-amd64.tar.gz && \
cd /usr/local/src && curl -LO https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz && \
cd /usr/local/src && mkdir -p go1.4 && \
cd /usr/local/src && tar xvf go1.4.3.linux-amd64.tar.gz && \
cd /usr/local/src && mv /usr/local/src/go/* go1.4 && \
cd /usr/local/src && tar xvf go1.13.5.linux-amd64.tar.gz && \
cd go/src && export GOROOT_BOOTSTRAP=/usr/local/src/go1.4 && ./all.bash
