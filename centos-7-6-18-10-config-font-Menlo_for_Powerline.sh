#!/usr/bin/env bash

#https://qiita.com/hmmrjn/items/60d2a64c9e5bf7c0fe60#%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B%E5%86%85%E5%AE%B9%E3%82%92%E5%A4%89%E3%81%88%E3%82%8B

mkdir -p $HOME/.fonts
cd $HOME/.fonts
curl -sSLO 'https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf'
fc-cache -fv

#端末の使用するフォントをMenlo-for-Powerline Regularに変更する
