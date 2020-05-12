#!/usr/bin/env bash

#ベンダ提供のパッケージなので、制約がかかりpostgresユーザーで実行する

export PATH=/usr/pgsql-12/bin:$PATH

ps aux | grep -P '/usr/pgsql-12/bin/postgres -D /home/postgres/dat' | grep -v grep | awk '{print \$2}' | xargs kill -9

rm -rf /home/postgres/dat

initdb -D /home/postgres/dat

pg_ctl -D /home/postgres/dat -l /home/postgres/launch-postgres.log start

psql -U postgres -c "create database testdb"

psql -U postgres -d testdb -c 'select version();'

psql -U postgres -d testdb </usr/local/src/script-repo/centos-7-6-18-10-healthcheck-postgres-12-X.sql

psql -U postgres -d testdb </usr/local/src/script-repo/centos-7-6-18-10-healthcheck-postgres-12-X-with-python.sql
