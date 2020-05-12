#!/usr/bin/env bash

groupadd -g 991 elasticsearch && \
useradd -m -g elasticsearch -u 994 elasticsearch && \
chsh -s /bin/bash elasticsearch && \
echo 'elasticsearch_pwd' | passwd --stdin elasticsearch && \
echo 'elasticsearch ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
groupadd -g 990 kibana && \
useradd -m -g kibana -u 993 kibana && \
chsh -s /bin/bash kibana && \
echo 'kibana_pwd' | passwd --stdin kibana && \
echo 'kibana ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
