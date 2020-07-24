#!/usr/bin/env bash


#- https://brave-browser.readthedocs.io/en/latest/installing-brave.html#linux
#
#- dockerコンテナ上ではうまくいかなかった。
#
#  - 以下でこける
#```
#apt install apt-transport-https
#```

cd /usr/local/src


apt install apt-transport-https curl


curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -


echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list

apt update

apt install -y brave-browser


which brave-browser
#/usr/bin/brave-browser

