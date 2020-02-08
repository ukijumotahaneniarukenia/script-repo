#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://ftp.postgresql.org/pub/source/v12.0/postgresql-12.0.tar.gz && \
tar xvf postgresql-12.0.tar.gz && \
chown -R root:root postgresql-12.0 && \
cd postgresql-12.0 && \
./configure --prefix=/usr/local --libdir=/usr/local/lib/postgresql --with-tcl && \
make -j12 && \
make -j12 install
