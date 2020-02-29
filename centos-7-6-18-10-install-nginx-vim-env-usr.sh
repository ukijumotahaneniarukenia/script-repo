#!/usr/bin/env bash
groupadd -g 1001 nginx && \
useradd -m -g nginx -u 1001 nginx && \
chsh -s /bin/bash nginx && \
echo 'nginx_pwd' | passwd --stdin nginx && \
echo 'nginx ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root_pwd' | passwd --stdin root
