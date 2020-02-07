#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.5.1-x86_64.rpm && \
yum install -y elasticsearch-7.5.1-x86_64.rpm
