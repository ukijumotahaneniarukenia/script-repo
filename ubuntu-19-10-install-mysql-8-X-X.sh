#!/usr/bin/env bash

cd /usr/local/src && \
wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb && \
dpkg -i mysql-apt-config_0.8.15-1_all.deb && \
apt update && \
apt install -y mysql-server && \
