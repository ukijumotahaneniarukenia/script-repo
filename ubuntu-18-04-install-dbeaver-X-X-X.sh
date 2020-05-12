#!/usr/bin/env bash

apt install -y openjdk-8-jre-headless openjdk-11-jre-headless openjdk-11-jdk-headless

apt install -y libswt-webkit-gtk-4-jni

cd /usr/local/src && \
curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && \
dpkg -i dbeaver-ce_latest_amd64.deb
