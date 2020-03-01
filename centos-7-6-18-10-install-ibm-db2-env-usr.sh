#!/usr/bin/env bash

groupadd -g 1000 db && \
useradd -m -g db -u 1001 db && \
chsh -s /bin/bash db && \
echo '0 root 0 root root_pwd' | passwd --stdin db && \
echo 'db ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
