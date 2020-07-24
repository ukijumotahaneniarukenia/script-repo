#!/usr/bin/env bash

#dockerホストで実施

#https://flatpak.org/setup/Ubuntu/

cd /usr/local/src

apt install -y flatpak

apt install -y software-properties-common

add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak

apt install -y gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#再起動が必要
