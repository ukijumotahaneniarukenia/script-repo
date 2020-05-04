#!/usr/bin/env bash
cd /usr/local/src/
curl -sSLO https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.1.tar.gz
tar xvf ruby-2.7.1.tar.gz
cd ruby-2.7.1
./configure
make -j12
make -j12 install
