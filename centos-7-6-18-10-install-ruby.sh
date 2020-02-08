#!/usr/bin/env bash
yum install -y ruby autoconf bison && \
cd /usr/local/src && \
git clone https://github.com/ruby/ruby.git && \
cd ruby && \
autoconf && \
./configure --prefix=/usr/local --enable-shared && \
make -j12 && \
make -j12 install
