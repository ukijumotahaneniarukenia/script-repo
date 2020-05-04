#!/usr/bin/env bash
mkdir ~/.fonts/noto-sans-cjk
cd ~/.fonts/noto-sans-cjk
wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
unzip NotoSansCJKjp-hinted.zip
cd ~/.fonts/
mv ~/.fonts/noto-sans-cjk/*otf .
fc-cache -fv
