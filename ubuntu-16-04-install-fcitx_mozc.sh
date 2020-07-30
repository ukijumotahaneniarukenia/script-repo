#!/usr/bin/env bash

#レポジトリの設定修正
sed -i.bak -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
apt update

#インプットメソッドのインストール
apt install -y fcitx-mozc

#dbus-deamonコマンドのインストール
apt install -y dbus-x11

#レポジトリの設定修正
cp -p /etc/apt/sources.list.bak /etc/apt/sources.list
apt update
