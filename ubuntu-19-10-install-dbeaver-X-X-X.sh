#!/usr/bin/env bash

apt install openjdk-8-jre-headless ca-certificates-java java-common libpcsclite1

cd /usr/local/src && \
curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && \
dpkg -i dbeaver-ce_latest_amd64.deb
