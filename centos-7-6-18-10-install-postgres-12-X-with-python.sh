#!/usr/bin/env bash

#ソースからビルドうまくいかんので、レポからいんすこ

#yum install -y python-devel

#cd /usr/local/src && \
#curl -LO https://ftp.postgresql.org/pub/source/v12.0/postgresql-12.0.tar.gz && \
#tar xvf postgresql-12.0.tar.gz && \
#chown -R root:root postgresql-12.0 && \
#cd postgresql-12.0 && \
#./configure --prefix=/usr/local --libdir=/usr/local/lib/postgresql --with-python && \
#make -j12 && \
#make -j12 install

yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

yum -y install postgresql12-server postgresql12-devel postgresql12-libs postgresql12-plpython3

find / -name "*Python.h*" 2>/dev/null #ヘッダファイルの確認

find / -name "*libpython*so*" 2>/dev/null #pythonダイナミックリンクライブラリの確認

find / -name "*plpython*so*" 2>/dev/null #plpythonダイナミックリンクライブラリの確認

ldconfig -p | grep py #キャッシュできているか確認

ldd /usr/pgsql-12/lib/plpython3.so #紐づき確認
