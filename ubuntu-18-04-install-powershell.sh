#!/usr/bin/env bash

#https://docs.microsoft.com/ja-jp/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-6#ubuntu-1804

cd /usr/local/src

apt-get install -y software-properties-common

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
dpkg -i packages-microsoft-prod.deb

# Update the list of products
apt-get update

# Enable the "universe" repositories
add-apt-repository universe

# Install PowerShell
apt-get install -y powershell

#pwsh
#PowerShell 7.0.3
#Copyright (c) Microsoft Corporation. All rights reserved.
#
#https://aka.ms/powershell
#Type 'help' to get help.
#
#PS /usr/local/src>

which pwsh
#/usr/bin/pwsh
