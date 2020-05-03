#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm && \
yum install -y dbeaver-ce-latest-stable.x86_64.rpm
