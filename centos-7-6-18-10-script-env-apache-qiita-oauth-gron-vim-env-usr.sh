#!/usr/bin/env bash
groupadd -g 1001 apache && \
useradd -m -g apache -u 1001 apache && \
chsh -s /bin/bash apache && \
echo 'apache_pwd' | passwd --stdin apache && \
echo 'apache ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root_pwd' | passwd --stdin root
