#!/usr/bin/env bash

#rootユーザが一時的に一般ユーザーになりすまして実行する想定
su - postgres <<EOF

ps aux | grep -P '/usr/pgsql-12/bin/postgres -D /var/lib/pgsql/12/data' | grep -v grep | awk '{print \$2}' | xargs kill -9

rm -rf /var/lib/pgsql/12/data

pg_ctl -D /home/postgres/pgdat -l /home/postgres/launch-postgres.log start

psql -U postgres -c "create database testdb"

psql -U postgres -d testdb -c 'select version();'

psql -U postgres -d testdb </usr/local/src/script-repo/centos-7-6-18-10-healthcheck-postgres-12-X.sql

psql -U postgres -d testdb </usr/local/src/script-repo/centos-7-6-18-10-healthcheck-postgres-12-X-with-python.sql
EOF
