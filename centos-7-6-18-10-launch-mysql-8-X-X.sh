#!/usr/bin/env bash

#プロセス停止
N=$(ps aux | grep 'mysqld -D --user=mysql' | grep -v grep | awk '{print $2}' | xargs)

[ -z $N ] || kill -9 $N
[ -z $N ] && :

#データファイル等削除
rm -rf /var/lib/mysql
>/var/log/mysqld.log

#データファイル等作成
mysqld --initialize --user=mysql

#バッググラウンドモードで起動
mysqld -D --user=mysql

#プロセス確認
ps aux

#ログ確認
tail -n30 /var/log/mysqld.log
