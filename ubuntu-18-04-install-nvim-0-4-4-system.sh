#!/usr/bin/env bash

cd /usr/local/src

curl -fsSLO https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage

chmod 755 nvim.appimage

./nvim.appimage --appimage-extract

chmod -R 755 squashfs-root/

ln -fsr /usr/local/src/squashfs-root/usr/bin/nvim /usr/local/bin/nvim
ln -fsr /usr/local/src/squashfs-root/usr/bin/nvim /usr/local/bin/nvi
