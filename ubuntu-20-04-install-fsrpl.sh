#!/usr/bin/env bash

cd /usr/local/src

mkdir -p fsrpl-bin

curl -fsSLO https://github.com/matsu0228/fsrpl/releases/download/1.0.0/fsrpl_1.0.0_linux_amd64.tar.gz

tar xvf fsrpl_1.0.0_linux_amd64.tar.gz -C /usr/local/src/fsrpl-bin

which fsrpl
