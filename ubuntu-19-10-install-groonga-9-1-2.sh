#!/usr/bin/env bash
cd /usr/local/src && \
wget https://packages.groonga.org/source/groonga/groonga-9.1.2.tar.gz && \
tar xvzf groonga-9.1.2.tar.gz && \
cd groonga-9.1.2 && \
./configure --prefix=/usr/local && \
make -j12 && \
make -j12 install
