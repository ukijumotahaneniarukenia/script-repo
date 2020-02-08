#!/usr/bin/env bash
#タイムゾーンの設定（この設定は最初にもってくる。対話入力避けるため。）
apt install -y tzdata && ln -fsr /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
#日本語環境
apt-get install -y locales && locale-gen ja_JP.UTF-8 && echo 'export LANG=ja_JP.UTF-8' >> /etc/profile.d/99-locale-ja.sh
