#!/usr/bin/env bash

cd /usr/local/src && \
wget https://pkg.osquery.io/deb/osquery_4.2.0_1.linux.amd64.deb && \
dpkg -i osquery_4.2.0_1.linux.amd64.deb
