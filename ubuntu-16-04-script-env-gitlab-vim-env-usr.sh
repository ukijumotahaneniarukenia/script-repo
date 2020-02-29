#!/usr/bin/env bash
groupadd -g 1001 gitlab && \
useradd -m -g gitlab -u 1001 gitlab && \
echo 'gitlab:gitlab_pwd' | chpasswd && \
echo 'gitlab ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
chsh -s /bin/bash gitlab && \
echo 'root:root_pwd' | chpasswd