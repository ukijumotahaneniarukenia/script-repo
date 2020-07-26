#!/usr/bin/env bash
apt install -y \
iproute2 \
lsof \
net-tools \
psmisc \
traceroute \
dnsutils \ #nslookupとdigコマンドが使えるようになる
iputils-tracepath #tracepathコマンドが使えるようになる
