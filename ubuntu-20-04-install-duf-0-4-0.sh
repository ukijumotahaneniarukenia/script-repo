#!/usr/bin/env bash

mkdir -p /usr/local/src/duf-bin

curl -fsSLO https://github.com/muesli/duf/releases/download/v0.4.0/duf_0.4.0_linux_x86_64.tar.gz

tar xvf duf_0.4.0_linux_x86_64.tar.gz -C /usr/local/src/duf-bin

which duf
