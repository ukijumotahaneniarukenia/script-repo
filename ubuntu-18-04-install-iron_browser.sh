#!/usr/bin/env bash

#https://www.srware.net/iron/

#root is not in the sudoers file.  This incident will be reported.
#とでるがなぞ
#dockerコンテナ環境でやる
echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

cd /usr/local/src

dpkg -i iron64.deb

#chromeをラップしている
which chrome
#/usr/share/iron/chrome
