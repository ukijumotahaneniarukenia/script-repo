#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://artifacts.elastic.co/downloads/kibana/kibana-7.5.1-x86_64.rpm && \
yum install -y kibana-7.5.1-x86_64.rpm
