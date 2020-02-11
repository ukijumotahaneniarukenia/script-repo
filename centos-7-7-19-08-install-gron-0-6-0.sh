#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://github.com/tomnomnom/gron/releases/download/v0.6.0/gron-linux-amd64-0.6.0.tgz && \
tar xvf gron-linux-amd64-0.6.0.tgz -C /usr/local/bin
