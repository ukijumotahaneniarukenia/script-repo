#!/usr/bin/env bash

curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
yum install -y MariaDB-server
