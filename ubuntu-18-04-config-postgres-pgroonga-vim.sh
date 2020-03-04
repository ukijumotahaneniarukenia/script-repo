#!/usr/bin/env bash

apt install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y ppa:groonga/ppa
apt-get update
apt install -y -V postgresql-10-pgroonga
apt install -y -V groonga-tokenizer-mecab

ls -lh /usr/local/share/postgresql/extension

#拡張ディレクトリにコピー
find / -name "*pgroonga*" 2>/dev/null | grep -P '(pgroonga_database.control|pgroonga.control|pgroonga_database--2.2.2.sql|pgroonga--2.2.2.sql)' | awk '{PRE=$1;gsub(".*/","",$1);print "cp "PRE" /usr/local/share/postgresql/extension/"$1}' | bash

ls -lh /usr/local/share/postgresql/extension

#postgresプロセスが読み込むダイナミックリンクファイルディレクトリを確認
pg_config --libdir

find / -name "*pgroonga.so" 2>/dev/null

#ダイナミックリンクライブラリをpostgresプロセスが読み込むディレクトリにコピー
find / -name "*pgroonga.so" 2>/dev/null | awk -v DIR=$(pg_config --libdir) '{PRE=$1;gsub(".*/","",$1);print "cp "PRE" "DIR"/"$1}' | bash

find / -name "*pgroonga.so" 2>/dev/null

#システム単位でpostgresプロセスが読み込むダイナミックリンクディレクトリを設定し、キャッシ�が作成できるようにする
echo '/usr/local/lib/postgresql' >/etc/ld.so.conf.d/postgresql.conf

#キャッシュ作成
ldconfig -v

#キャッシュ確認
ldconfig -p | grep groonga
