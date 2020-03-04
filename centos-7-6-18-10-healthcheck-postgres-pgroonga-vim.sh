#!/usr/bin/env bash

su - postgres <<EOF
ps aux | grep -P '/usr/local/bin/postgres -D /home/postgres/dat' | grep -v grep | awk '{print \$2}' | xargs kill -9
rm -rf /home/postgres/dat
initdb -D /home/postgres/dat
pg_ctl -D /home/postgres/dat -l /home/postgres/launch-postgres.log start
psql -U postgres -c "create database testdb"
psql -U postgres -d testdb -c "SELECT * FROM pg_available_extensions;"
psql -U postgres -d testdb -c "CREATE EXTENSION pgroonga;"
psql -U postgres -d testdb -c "SELECT * FROM pg_available_extensions;"
psql -U postgres -d testdb </usr/local/src/script-repo/centos-7-6-18-10-healthcheck-postgres-pgroonga-vim.sql
EOF
