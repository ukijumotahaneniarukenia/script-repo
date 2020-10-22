#!/usr/bin/env bash

#https://github.com/sgarciac/fuego/releases

cd /usr/local/src/

curl -fsSLO https://github.com/sgarciac/fuego/releases/download/v0.11.0/fuego_0.11.0_Linux_64-bit.tar.gz

mkdir -p /usr/local/src/fuego-bin

tar xvf fuego_0.11.0_Linux_64-bit.tar.gz -C /usr/local/src/fuego-bin

which fuego
