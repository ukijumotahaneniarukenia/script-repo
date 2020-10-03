#!/usr/bin/env bash

echo | add-apt-repository ppa:peek-developers/stable

apt update

#https://itsfoss.com/best-linux-screen-recorders/
apt install -y peek
