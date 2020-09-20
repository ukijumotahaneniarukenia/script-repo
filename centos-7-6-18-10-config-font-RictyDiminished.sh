#!/usr/bin/env bash

if [ $UID -eq 0 ];then

  apt install -y fontconfig

fi

mkdir -p $HOME/.fonts

cd $HOME/.fonts

rm -rf master.zip

rm -rf RictyDiminished-for-Powerline-master

curl -sSLO https://github.com/mzyy94/RictyDiminished-for-Powerline/archive/master.zip

unzip master.zip

mv RictyDiminished-for-Powerline-master/*ttf .

fc-cache -fv
