#!/usr/bin/env bash

ln -fsr /usr/local/bin/python3 /usr/bin/python #3系を見に行くようにリンク上書き

#ダイナミックリンクライブラリの整備
echo "export LD_LIBRARY_PATH=/usr/local/lib" >> ~/.bashrc && source ~/.bashrc
echo '/usr/local/lib'>>/etc/ld.so.conf.d/local-ld.so.conf
ldconfig

#ライブラリキャッシュが更新されたか確認
ldconfig -p | grep py

#ヘッダファイル確認
find / -name "*Python.h*" 2>/dev/null

cd /usr/local/src && \
curl -LO https://ftp.postgresql.org/pub/source/v12.0/postgresql-12.0.tar.gz && \
tar xvf postgresql-12.0.tar.gz && \
chown -R root:root postgresql-12.0 && \
cd postgresql-12.0 && \
./configure --prefix=/usr/local --libdir=/usr/local/lib/postgresql --with-python && \
make -j12 && \
make -j12 install
