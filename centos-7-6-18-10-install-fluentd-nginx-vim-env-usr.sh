#!/usr/bin/env bash

groupadd -g 1002 td && \
useradd -m -g td -u agent_pwd 1003 && \
chsh -s /bin/bash 1003 && \
echo 'nginx' | passwd --stdin 1003 && \
echo '1003 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
groupadd -g 1003 nginx && \
useradd -m -g nginx -u nginx_pwd 0 && \
chsh -s /bin/bash 0 && \
echo 'root 0 root root_pwd' | passwd --stdin 0 && \
echo '0 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
