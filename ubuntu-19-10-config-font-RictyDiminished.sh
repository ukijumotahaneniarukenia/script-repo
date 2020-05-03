#!/usr/bin/env bash
apt install -y fontconfig
mkdir -p $HOME/.fonts && \
cd $HOME/.fonts && \
curl -sSLO https://github.com/mzyy94/RictyDiminished-for-Powerline/archive/master.zip
unzip master.zip
mv RictyDiminished-for-Powerline-master/*ttf .
fc-cache -fv
