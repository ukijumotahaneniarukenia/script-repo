#!/usr/bin/env bash
cd /usr/local/src

curl -fsSLO https://dl.google.com/go/go1.4.3.linux-amd64.tar.gz

curl -fsSLO https://golang.org/dl/go1.15.1.linux-amd64.tar.gz



#ブートストラップ用のgolangを設定
mkdir -p /usr/local/src/go1.4
tar xvf go1.4.3.linux-amd64.tar.gz
mv /usr/local/src/go/* /usr/local/src/go1.4


tar xvf go1.15.1.linux-amd64.tar.gz
cd /usr/local/src/go/src
export GOROOT_BOOTSTRAP=/usr/local/src/go1.4
./all.bash
