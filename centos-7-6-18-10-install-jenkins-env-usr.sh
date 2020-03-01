#!/usr/bin/env bash

groupadd -g 1001 jenkins && \
useradd -m -g jenkins -u 1001 jenkins && \
chsh -s /bin/bash jenkins && \
echo 'jenkins_pwd' | passwd --stdin jenkins && \
echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root_pwd' | passwd --stdin root
