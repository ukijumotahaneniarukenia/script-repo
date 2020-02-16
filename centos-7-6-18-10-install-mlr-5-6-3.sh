#!/usr/bin/env bash
yum install -y flex && \
cd /usr/local/src && \
git clone https://github.com/johnkerl/miller.git && \
cd miller && \
./configure --prefix=/usr/local --enable-shared && \
aclocal_version=$(aclocal --version | grep aclocal | awk '{print $4}') && \
sed -r -i "s;am__api_version='1.15';am__api_version='$aclocal_version';g" configure && \
make -j12 && \
make -j12 install
