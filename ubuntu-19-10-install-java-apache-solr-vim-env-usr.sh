#!/usr/bin/env bash
groupadd -g 1001 solr && \
useradd -m -g solr -u 1001 solr && \
echo 'solr:solr_pwd' | chpasswd && \
echo 'solr ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
chsh -s /bin/bash solr && \
echo 'root:root_pwd' | chpasswd
