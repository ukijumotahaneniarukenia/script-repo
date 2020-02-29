#!/usr/bin/env bash
groupadd -g 1001 kuraine && \
useradd -m -g kuraine -u 1001 kuraine && \
chsh -s /bin/bash kuraine && \
echo 'kuraine_pwd' | passwd --stdin kuraine && \
echo 'kuraine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root_pwd' | passwd --stdin root
