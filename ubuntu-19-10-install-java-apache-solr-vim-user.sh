#!/usr/bin/env bash

groupadd -g 1001 solr && \
useradd -m -g solr -u 1001 solr && \
chsh -s /bin/bash solr && \
echo 'solr:solr_pwd' | chpasswd && \
echo 'solr ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
