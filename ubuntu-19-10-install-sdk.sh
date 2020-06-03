#!/usr/bin/env bash

#sdkコマンドは実行者単位でインストールされる

USER=$(whoami)

if [ $USER = "root" ];then
  apt install -y zip
else
  :
fi

curl -s "https://get.sdkman.io" | bash
