#!/usr/bin/env bash

cd /usr/local/src

wget -qO - https://typora.io/linux/public-key.asc | apt-key add -

apt-get install -y software-properties-common

add-apt-repository 'deb https://typora.io/linux ./'

apt-get update

apt-get install -y typora


which typora
