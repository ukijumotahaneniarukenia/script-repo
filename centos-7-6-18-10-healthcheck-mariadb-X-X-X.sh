#!/usr/bin/env bash

#プロセス停止
N=$(ps aux | grep 'mariadbd' | grep -v grep | awk '{print $2}' | xargs)

[ -z $N ] || echo $N | while read p;do kill -9 $p;done
[ -z $N ] && :

#バッググラウンドモードで起動
#mysqlユーザーで実行
su - mysql <<EOS

/usr/sbin/mariadbd 1>/home/mysql/launch-mariadb.log 2>&1 &

EOS

#プロセス確認
ps aux

mysql -uroot < /usr/local/src/script-repo/centos-7-6-18-10-config-mariadb-X-X-X.sql

mysql -uroot -pMysql3306 -Dtestdb < /usr/local/src/script-repo/centos-7-6-18-10-healthcheck-mariadb-X-X-X.sql

#mysqlユーザーで実行
su - mysql <<EOS

mysql -umysql -pMysql3306 -Dtestdb < /usr/local/src/script-repo/centos-7-6-18-10-healthcheck-mariadb-X-X-X.sql

EOS

mysql -uuser01 -pMysql3306 -Dtestdb < /usr/local/src/script-repo/centos-7-6-18-10-healthcheck-mariadb-X-X-X.sql
