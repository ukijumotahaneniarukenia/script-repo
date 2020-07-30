#!/usr/bin/env bash

apt install -y tzdata

ln -fsr /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

apt install -y locales

locale-gen ja_JP.UTF-8
