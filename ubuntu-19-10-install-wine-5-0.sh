#!/usr/bin/env bash
apt install -y wget gnupg gnupg2 gnupg1
dpkg --add-architecture i386
cd /opt && wget -nc https://dl.winehq.org/wine-builds/winehq.key; apt-key add winehq.key
apt install -y software-properties-common
apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'
#以下のコマンドを実行した時、Enter入力を求められる
echo | add-apt-repository ppa:cybermax-dexter/sdl2-backport
apt update
apt install -y --install-recommends winehq-stable
