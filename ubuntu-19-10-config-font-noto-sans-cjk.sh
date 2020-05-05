#!/usr/bin/env bash
mkdir -p $HOME/.fonts && \
cd $HOME/.fonts && \
wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
unzip NotoSansCJKjp-hinted.zip
mv *otf .
fc-cache -fv
