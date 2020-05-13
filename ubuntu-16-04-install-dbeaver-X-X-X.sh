#!/usr/bin/env bash

#ubuntu-16-04はjdk11配布していないので、ソースからインストールに変更
#apt install -y openjdk-8-jre-headless openjdk-11-jre-headless openjdk-11-jdk-headless

apt install -y libswt-webkit-gtk-4-jni


#https://github.com/dbeaver/dbeaver/wiki/Build-from-sources
cd /usr/local/src
git clone https://github.com/dbeaver/dbeaver.git dbeaver
cd dbeaver
/usr/local/src/apache-maven-3.6.3/bin/mvn package


#[INFO] ------------------------------------------------------------------------
#[INFO] BUILD SUCCESS
#[INFO] ------------------------------------------------------------------------
#[INFO] Total time:  23:55 min
#[INFO] Finished at: 2020-05-08T03:21:54Z
#[INFO] ------------------------------------------------------------------------


#ubuntu-16-04はjdk11配布していないので、ソースからインストールに変更
#cd /usr/local/src && \
#curl -LO https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb && \
#dpkg -i dbeaver-ce_latest_amd64.deb
