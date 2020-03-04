#!/usr/bin/env bash

#プロセス停止
N=$(ps aux | grep 'mysqld -D --user=mysql' | grep -v grep | awk '{print $2}' | xargs)

[ -z $N ] || kill -9 $N
[ -z $N ] && :

#データファイル等削除
rm -rf /var/lib/mysql
>/var/log/mysql/error.log

#デーモンプロセス格納フォルダ権限整備
mkdir -p /var/run/mysqld
chown mysql:mysql /var/run/mysqld

#データファイル等作成
mysqld --initialize --user=mysql

#バッググラウンドモードで起動
mysqld -D --user=mysql

#プロセス確認
ps aux

#ログ確認
tail -n30 /var/log/mysqld.log


#mysqlのDDLスクリプトはコメント行を無視してくれないので
mysql --connect-expired-password -uroot -p$(grep password  /var/log/mysqld.log | cut -d" " -f 13) -e 'source ubuntu-19-10-launch-mysql-8-X-X.sql'

#動作確認
mysql -uroot -pMysql3306 -Dtestdb -e 'source ubuntu-19-10-healthcheck-mysql-8-X-X.sql'

#動作確認
mysql -uuser01 -pMysql3306 -Dtestdb -e 'source ubuntu-19-10-healthcheck-mysql-8-X-X.sql'

#認証方式変更の必要あり
#https://qiita.com/yusuke_dev/items/7f0ca12ced72363f9448
#パッチ適用
mysql -uroot -pMysql3306 -e 'source ubuntu-19-10-patch-mysql-8-X-X.sql'
