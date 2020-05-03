#!/usr/bin/env bash

groupadd -g 1001 mysql && \
useradd -m -g mysql -u 1001 mysql && \
chsh -s /bin/bash mysql && \
echo 'mysql:mysql_pwd' | chpasswd && \
echo 'mysql ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
