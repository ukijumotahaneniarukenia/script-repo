#!/usr/bin/env bash
cd /usr/local/src
wget https://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
echo "deb http://nginx.org/packages/ubuntu/ $(lsb_release -cs) nginx" >>/etc/apt/sources.list
echo "deb-src http://nginx.org/packages/ubuntu/ $(lsb_release -cs) nginx" >>/etc/apt/sources.list
apt update
apt install -y nginx
