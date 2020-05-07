#!/usr/bin/env bash

#apt install openjdk-8-jre-headless ca-certificates-java java-common libpcsclite1

apt install -y openjdk-11-jdk openjdk-11-jre

apt install -y libswt-webkit-gtk-4-jni

cd /usr/local/src && \
curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && \
dpkg -i dbeaver-ce_latest_amd64.deb
