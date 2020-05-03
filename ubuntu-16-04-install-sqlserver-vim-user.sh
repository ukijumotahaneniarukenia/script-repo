#!/usr/bin/env bash

groupadd -g 1001 mssql && \
useradd -m -g mssql -u 1001 mssql && \
chsh -s /bin/bash mssql && \
echo 'mssql:mssql_pwd' | chpasswd && \
echo 'mssql ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers




