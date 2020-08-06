#!/usr/bin/env bash

#https://www.torproject.org/download/

#所有者のみが実行できるような構成になっていた
cd $HOME

curl -fsSLO https://www.torproject.org/dist/torbrowser/9.5.3/tor-browser-linux64-9.5.3_en-US.tar.xz

tar xvf tor-browser-linux64-9.5.3_en-US.tar.xz

which firefox
#/home/aine/tor-browser_en-US/Browser/firefox
