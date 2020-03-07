#!/usr/bin/env bash

ps aux | grep 'mysqld' | grep -v grep | awk '{print $2}' | xargs -I@ kill -9 @

>/var/log/mysql/error.log
mkdir -p /var/run/mysqld
chown mysql:mysql /var/run/mysqld

mysqld &

ps uax

tail -n30 /var/log/mysql/error.log

mysql -uroot -p -e "source ubuntu-16-04-config-mysql-5-7-29-mroonga-9-1-2.sql"
