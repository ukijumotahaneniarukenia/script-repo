#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://ftp.postgresql.org/pub/source/v11.7/postgresql-11.7.tar.gz && \
tar xvf postgresql-11.7.tar.gz && \
chown -R root:root postgresql-11.7 && \
cd postgresql-11.7 && \
./configure --prefix=/usr/local && \
make -j12 && \
make -j12 install
