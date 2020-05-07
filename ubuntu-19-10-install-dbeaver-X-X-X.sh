#!/usr/bin/env bash

apt install -y openjdk-11-jdk openjdk-11-jre

apt install -y libswt-webkit-gtk-4-jni

cd /usr/local/src && \
curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && \
dpkg -i dbeaver-ce_latest_amd64.deb

#ubuntu系のdbeaverのインストール方法（別のやり方）
#
#apt install -y openjdk-11-jdk openjdk-11-jre
#java -version
#wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | apt-key add -
#echo "deb https://dbeaver.io/debs/dbeaver-ce /" | tee /etc/apt/sources.list.d/dbeaver.list
#apt update
#apt install -y dbeaver-ce
#apt-cache search swt
#apt install -y libswt-webkit-gtk-4-jni
