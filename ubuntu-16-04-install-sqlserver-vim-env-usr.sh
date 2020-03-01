#!/usr/bin/env bash

groupadd -g 1001 mssql && \
useradd -m -g mssql -u 1001 mssql && \
chsh -s /bin/bash mssql && \
echo 'mssql:mssql_pwd' | chpasswd && \
echo 'mssql ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
groupadd -g 9999 kuraine && \
useradd -m -g kuraine -u 9999 kuraine && \
chsh -s /bin/bash kuraine && \
echo 'kuraine:kuraine_pwd' | chpasswd && \
echo 'kuraine ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root:root_pwd' | chpasswd
