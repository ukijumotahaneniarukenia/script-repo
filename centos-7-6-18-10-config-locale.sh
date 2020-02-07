#!/usr/bin/env bash

yum install -y \
glibc-common \
localedef
localedef -v -c -i ja_JP -f UTF-8 ja_JP.UTF-8; echo "";
rm -f /etc/localtime
ln -fsr /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
