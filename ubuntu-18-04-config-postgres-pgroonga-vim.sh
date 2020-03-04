#!/usr/bin/env bash

apt install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y ppa:groonga/ppa
apt-get update
apt install -y -V postgresql-10-pgroonga
apt install -y -V groonga-tokenizer-mecab

#拡張ディレクトリの確認
ls -lh /usr/local/share/postgresql/extension

#postgres拡張ディレクトリへコントロールファイル等をコピーする
find / -name "*pgroonga*" 2>/dev/null | grep -P '(pgroonga_database.control|pgroonga.control|pgroonga_database--2.2.2.sql|pgroonga--2.2.2.sql)' | awk '{PRE=$1;gsub(".*/","",$1);print "cp "PRE" /usr/local/share/postgresql/extension/"$1}' | bash

#拡張ディレクトリの確認
ls -lh /usr/local/share/postgresql/extension

#postgresプロセスが使用するダイナミックリンクファイルのエントリディレクトリを確認する
pg_config --libdir

#ダイナミックリンクファイルを確認する
find / -name "*pgroonga.so" 2>/dev/null

#ダイナミックリンクファイルをpostgresプロセスが使用するダイナミックリンクファイルのエントリディレクトリにコピーする
find / -name "*pgroonga.so" 2>/dev/null | awk -v DIR=$(pg_config --libdir) '{PRE=$1;gsub(".*/","",$1);print "cp "PRE" "DIR"/"$1}' | bash

#ダイナミックリンクファイルを確認する
find / -name "*pgroonga.so" 2>/dev/null

#postgresプロセスが使用するダイナミックリンクファイルのエントリディレクトリをシステム単位でキャッシュ作成対象ディレクトリとして認識させる
echo '/usr/local/lib/postgresql' >/etc/ld.so.conf.d/postgresql.conf

#キャッシュ作成
ldconfig -v

#キャッシュ確認
ldconfig -p | grep groonga
