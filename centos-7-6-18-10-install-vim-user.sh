#!/usr/bin/env bash

#.vim
git clone https://github.com/ukijumotahaneniarukenia/.vim.git ~/.vim

#dotfile
git clone https://github.com/ukijumotahaneniarukenia/dotfile.git ~/tmp && \
cd ~/tmp && \
mv rc/.[^.]* ~ && \
rm -rf ~/tmp

#vim-plugin-manager
mkdir -p ~/.vim/bundle && \
cd ~ && \
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
sh installer.sh ~/.vim/bundle && \
rm ~/installer.sh
