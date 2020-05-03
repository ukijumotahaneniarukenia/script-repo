#!/usr/bin/env bash

groupadd -g 1002 td && \
useradd -m -g td -u agent_pwd 1003 && \
chsh -s /bin/bash 1003 && \
echo 'nginx' | passwd --stdin 1003 && \
echo '1003 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root_pwd' | passwd --stdin root
echo 'root_pwd' | passwd --stdin root
echo 'root_pwd' | passwd --stdin root
echo 'root_pwd' | passwd --stdin root
