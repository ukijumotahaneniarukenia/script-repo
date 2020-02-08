#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
yum localinstall -y mysql80-community-release-el7-3.noarch.rpm && \
yum-config-manager --disable mysql57-community && \
yum-config-manager --enable mysql80-community && \
yum install -y mysql-community-server && \
{ \
      echo log_timestamps=SYSTEM; \
      echo skip-character-set-client-handshake; \
      echo character-set-server=utf8mb4; \
      echo explicit_defaults_for_timestamp=ON; \
} >> /etc/my.cnf
