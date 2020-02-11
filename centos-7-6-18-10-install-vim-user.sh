#!/usr/bin/env bash

#.vim
git clone https://github.com/ukijumotahaneniarukenia/.vim.git ~/.vim

#vim-plugin-manager
mkdir -p ~/.vim/bundle && \
cd ~ && \
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
sh installer.sh ~/.vim/bundle && \
rm ~/installer.sh
