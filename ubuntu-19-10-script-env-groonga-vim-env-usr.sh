#!/usr/bin/env bash
groupadd -g 1001 kuraine && \
useradd -m -g kuraine -u 1001 kuraine && \
echo 'kuraine:kuraine_pwd' | chpasswd && \
echo 'kuraine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
chsh -s /bin/bash kuraine && \
echo 'root:root_pwd' | chpasswd
