#!/usr/bin/env bash
groupadd -g 9999 kuraine && \
useradd -m -g kuraine -u 9999 kuraine && \
chsh -s /bin/bash kuraine && \
echo 'kuraine:kuraine_pwd' | chpasswd && \
echo 'kuraine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root:root_pwd' | chpasswd
