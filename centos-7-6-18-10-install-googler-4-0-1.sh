#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://github.com/jarun/googler/releases/download/v4.0/googler-4.0-1.el7.6.centos.x86_64.rpm && \
rpm -iUvh googler-4.0-1.el7.6.centos.x86_64.rpm
