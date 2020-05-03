#!/usr/bin/env bash

#.vim
git clone https://github.com/ukijumotahaneniarukenia/.vim.git $HOME/.vim

#vim-plugin-manager
mkdir -p $HOME/.vim/bundle && \
cd $HOME && \
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
sh installer.sh $HOME/.vim/bundle && \
rm $HOME/installer.sh
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
echo 'root:root_pwd' | chpasswd
