#!/usr/bin/env bash

sed -i.bak 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list
apt update
apt upgrade -y
