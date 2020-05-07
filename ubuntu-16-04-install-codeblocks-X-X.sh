#!/usr/bin/env bash

#http://www.codeblocks.org/
#http://www.codeblocks.org/downloads/26
#https://launchpad.net/~codeblocks-devs/+archive/ubuntu/release

cd /usr/local/src
apt-get install -y software-properties-common
add-apt-repository -y ppa:codeblocks-devs/release
apt update -y
apt install -y codeblocks codeblocks-contrib
