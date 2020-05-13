#!/usr/bin/env bash
cd /usr/local/src
curl -sSLO https://ftp.jaist.ac.jp/pub/apache/spark/spark-3.0.0-preview2/spark-3.0.0-preview2-bin-hadoop3.2.tgz
tar xvfz spark-3.0.0-preview2-bin-hadoop3.2.tgz
chown -R hadoop:hadoop spark-3.0.0-preview2-bin-hadoop3.2
