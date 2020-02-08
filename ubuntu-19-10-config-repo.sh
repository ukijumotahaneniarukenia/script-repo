#!/usr/bin/env bash
#レポジトリを日本サーバーに変更
sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list
apt update && apt upgrade -y
