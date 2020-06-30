#!/usr/bin/env bash

cd /usr/local/src

curl -LO https://nim-lang.org/download/nim-1.0.6-linux_x64.tar.xz

tar xvf nim-1.0.6-linux_x64.tar.xz

cd nim-1.0.6

./install.sh /usr/local/bin

./koch nimble

ln -fsr /usr/local/src/nim-1.0.6/bin/nimble /usr/local/bin/nimble
