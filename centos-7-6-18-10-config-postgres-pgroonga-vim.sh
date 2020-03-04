#!/usr/bin/env bash

yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-$(rpm -qf --queryformat="%{VERSION}" /etc/redhat-release)-$(rpm -qf --queryformat="%{ARCH}" /etc/redhat-release)/pgdg-redhat-repo-latest.noarch.rpm
yum install -y https://packages.groonga.org/centos/groonga-release-latest.noarch.rpm
yum install -y postgresql12-pgroonga
yum install -y groonga-tokenizer-mecab

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
