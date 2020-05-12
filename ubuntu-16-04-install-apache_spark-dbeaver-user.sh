#!/usr/bin/env bash
groupadd -g 1001 hadoop && \
useradd -m -g hadoop -u 1001 hadoop && \
chsh -s /bin/bash hadoop && \
echo 'hadoop:hadoop_pwd' | chpasswd && \
echo 'hadoop ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root:root_pwd' | chpasswd
