#!/usr/bin/env bash
groupadd -g 1000 db2iadm1 && \
useradd -m -g db2iadm1 -u 1000 db2inst1 && \
chsh -s /bin/bash db2inst1 && \
echo 'db2inst1_pwd' | passwd --stdin db2inst1 && \
echo 'db2inst1 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

groupadd -g 1001 db2fadm1 && \
useradd -m -g db2fadm1 -u 1001 db2fenc1 && \
chsh -s /bin/bash db2fenc1 && \
echo 'db2fenc1_pwd' | passwd --stdin db2fenc1 && \
echo 'db2fenc1 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

echo 'root_pwd' | passwd --stdin root
