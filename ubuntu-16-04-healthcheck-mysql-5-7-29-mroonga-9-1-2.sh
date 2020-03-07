#!/usr/bin/env bash

mysql -uroot -pMysql3306 -Dtestdb -e "source ubuntu-16-04-healthcheck-mysql-5-7-29-mroonga-9-1-2.sql"

mysql -unon-root-user -pMysql3306 -Dtestdb -e "source ubuntu-16-04-healthcheck-mysql-5-7-29-mroonga-9-1-2.sql"
