#!/usr/bin/env bash

apt install -y fontconfig

mkdir -p $HOME/.fonts

cd $HOME/.fonts

curl -sSLO https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip

unzip Cica_v5.0.1_with_emoji.zip -d Cica_v5.0.1_with_emoji

mv Cica_v5.0.1_with_emoji/*ttf .

fc-cache -fv
