#!/usr/bin/env bash

chown -R mssql:mssql /home/mssql
ln -fsr /opt/mssql-tools/bin/sqlcmd /usr/local/bin/sqlcmd
