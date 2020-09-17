#!/usr/bin/env bash

cd /usr/local/src

curl -LO https://ftp.postgresql.org/pub/source/v12.4/postgresql-12.4.tar.gz

tar xvf postgresql-12.4.tar.gz

chown -R root:root postgresql-12.4

cd postgresql-12.4

./configure --prefix=/usr/local

make -j12

make -j12 install
