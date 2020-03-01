#!/usr/bin/env bash

mkdir -p /home/mssql
chown -R mssql:mssql /home/mssql
ln -fsr /opt/mssql-tools/bin/sqlcmd /usr/local/bin/sqlcmd
