#!/usr/bin/env bash
yum install -y unzip && \
cd /usr/local/src && \
curl -LO https://github.com/noborus/trdsql/releases/download/v0.7.3/trdsql_v0.7.3_linux_amd64.zip && \
unzip trdsql_v0.7.3_linux_amd64.zip && \
cd trdsql_v0.7.3_linux_amd64 && \
cp /usr/local/src/trdsql_v0.7.3_linux_amd64/trdsql /usr/local/bin/trdsql
