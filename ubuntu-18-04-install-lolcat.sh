#!/usr/bin/env bash

#https://www.tecmint.com/lolcat-command-to-output-rainbow-of-colors-in-linux-terminal/
cd /usr/local/src

#https://github.com/busyloop/lolcat
wget https://github.com/busyloop/lolcat/archive/master.zip

unzip master.zip

cd lolcat-master/bin

gem install lolcat
