#!/usr/bin/env bash

cd /usr/local/src

#https://github.com/mruby/mruby/releases/tag/2.1.1
curl -fsSL https://github.com/mruby/mruby/archive/2.1.1.tar.gz -o mruby-2.1.1.tar.gz


tar xvf mruby-2.1.1.tar.gz


cd mruby-2.1.1


apt install -y bison

make -j12


find -type f | xargs file | grep shared | grep -v build | cut -d ':' -f 1

find -type f | xargs file | grep shared | grep -v build | cut -d ':' -f 1 | xargs -I@ mv @ /usr/local/bin/


mruby --version

mrbc --version

mirb --version

mrdb --version

mruby-strip --version
