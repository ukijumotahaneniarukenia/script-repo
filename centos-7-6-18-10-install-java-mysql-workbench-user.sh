#!/usr/bin/env bash

groupadd -g 1001 mysql && \
useradd -m -g mysql -u 1001 mysql && \
chsh -s /bin/bash mysql && \
echo 'mysql_pwd' | passwd --stdin mysql && \
echo 'mysql ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
