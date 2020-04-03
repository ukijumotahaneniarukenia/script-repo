#!/usr/bin/env bash

#https://docs.microsoft.com/ja-jp/dotnet/core/install/linux-package-manager-ubuntu-1910#install-the-net-core-sdk
cd /usr/local/src && \
wget -q https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
dpkg -i packages-microsoft-prod.deb && \
apt-get update && \
apt-get install apt-transport-https && \
apt-get update && \
apt-get install -y dotnet-sdk-3.1
