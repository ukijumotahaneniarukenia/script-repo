#!/usr/bin/env bash

#.vim
rm -rf $HOME/.vim

git clone https://github.com/ukijumotahaneniarukenia/.vim.git $HOME/.vim

#vim-plugin-manager
rm -rf $HOME/.vim/bundle

mkdir -p $HOME/.vim/bundle

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $HOME/installer.sh


sh $HOME/installer.sh $HOME/.vim/bundle


rm -rf $HOME/installer.sh
