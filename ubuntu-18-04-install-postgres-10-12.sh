#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://ftp.postgresql.org/pub/source/v10.12/postgresql-10.12.tar.gz && \
tar xvf postgresql-10.12.tar.gz && \
chown -R root:root postgresql-10.12 && \
cd postgresql-10.12 && \
./configure --prefix=/usr/local && \
make -j12 && \
make -j12 install
