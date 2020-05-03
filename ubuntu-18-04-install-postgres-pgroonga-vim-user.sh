#!/usr/bin/env bash

groupadd -g 1001 postgres && \
useradd -m -g postgres -u 1001 postgres && \
chsh -s /bin/bash postgres && \
echo 'postgres:postgres_pwd' | chpasswd && \
echo 'postgres ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers




