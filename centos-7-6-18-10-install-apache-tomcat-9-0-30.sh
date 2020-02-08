#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO http://ftp.riken.jp/net/apache/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz && \
tar xvf apache-tomcat-9.0.30.tar.gz && \
chmod -R 755 apache-tomcat-9.0.30
