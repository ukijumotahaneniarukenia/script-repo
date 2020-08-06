#!/usr/bin/env bash

#https://docs.microsoft.com/ja-jp/dotnet/core/install/linux-ubuntu#1910-

cd /usr/local/src

wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

dpkg -i packages-microsoft-prod.deb

apt-get update
apt-get install -y apt-transport-https
apt-get install -y dotnet-sdk-3.1
apt-get install -y dotnet-runtime-3.1
