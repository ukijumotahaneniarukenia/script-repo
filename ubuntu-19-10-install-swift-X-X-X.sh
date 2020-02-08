#!/usr/bin/env bash
apt install -y clang libicu-dev
cd /usr/local/src && \
curl -LO https://swift.org/builds/development/ubuntu1804/swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a/swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a-ubuntu18.04.tar.gz && \
tar xvf swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a-ubuntu18.04.tar.gz
