#!/usr/bin/env bash
apt install -y -V software-properties-common lsb-release
add-apt-repository -y universe
add-apt-repository "deb http://security.ubuntu.com/ubuntu $(lsb_release --short --codename)-security main restricted"
add-apt-repository -y ppa:groonga/ppa
apt update
apt install -y -V mysql-server-mroonga
apt install -y -V groonga-tokenizer-mecab
