#!/usr/bin/env bash
groupadd -g 1000 aine && \
useradd -m -g aine -u 1000 aine && \
chsh -s /bin/bash aine && \
echo 'aine:aine_pwd' | chpasswd && \
echo 'aine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
