#!/usr/bin/env bash

groupadd -g 1001 egison && \
useradd -m -g egison -u 1001 egison && \
chsh -s /bin/bash egison && \
echo 'egison_pwd' | passwd --stdin egison && \
echo 'egison ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root_pwd' | passwd --stdin root
