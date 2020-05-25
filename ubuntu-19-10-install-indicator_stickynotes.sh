#!/usr/bin/env bash

apt-get -y install software-properties-common

#Enter求められるので改行流し込む
echo | add-apt-repository ppa:umang/indicator-stickynotes

apt-get update

apt-get -y install indicator-stickynotes
