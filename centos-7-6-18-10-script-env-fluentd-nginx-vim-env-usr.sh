#!/usr/bin/env bash
groupadd -g 1002 td-agent && \
useradd -m -g td-agent -u 1002 td-agent && \
chsh -s /bin/bash td-agent && \
echo 'td-agent_pwd' | passwd --stdin td-agent && \
echo 'td-agent ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

groupadd -g 1003 nginx && \
useradd -m -g nginx -u 1003 nginx && \
chsh -s /bin/bash nginx && \
echo 'nginx_pwd' | passwd --stdin nginx && \
echo 'nginx ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

echo 'root_pwd' | passwd --stdin root
