#!/usr/bin/env bash
groupadd -g 1001 anacon && \
useradd -m -g anacon -u 1001 anacon && \
chsh -s /bin/bash anacon && \
echo 'anacon_pwd' | passwd --stdin anacon && \
echo 'anacon ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
echo 'root_pwd' | passwd --stdin root
