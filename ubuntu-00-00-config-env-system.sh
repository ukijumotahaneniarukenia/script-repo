#!/usr/bin/env bash

# 端末エミュレータごとのコマンド履歴を共有化
echo 'export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"' >>$HOME/.bashrc
echo 'shopt -u histappend' >>$HOME/.bashrc

#使用するログインシェルの設定
echo 'export SHELL=$(which bash)' >>$HOME/.bashrc

#Xアプリ転送先設定
echo 'export DISPLAY=:0.0' >>$HOME/.bashrc

#アプリ側でデフォルトで使用するエディタの設定
echo 'export EDITOR=/usr/local/bin/vim' >>$HOME/.bashrc

#ロケール
echo 'export LANG=ja_JP.UTF-8' >>$HOME/.bashrc
#echo 'export LANGUAGE=ja_JP.UTF-8' >>$HOME/.bashrc
#echo 'export LC_ALL=ja_JP.UTF-8' >>$HOME/.bashrc

#IME (コンテナ上でibus安定したらそっちに変えたい)
#echo 'export GTK_IM_MODULE=ibus' >>$HOME/.bashrc
#echo 'export XMODIFIERS=@im=ibus' >>$HOME/.bashrc
#echo 'export QT_IM_MODULE=ibus' >>$HOME/.bashrc

#IME (コンテナホスト上でibus使用しているため、コンテナホストとコンテナゲストを棲み分けたい意味での設定)
echo 'export GTK_IM_MODULE=fcitx' >>$HOME/.bashrc
echo 'export XMODIFIERS=@im=fcitx' >>$HOME/.bashrc
echo 'export QT_IM_MODULE=fcitx' >>$HOME/.bashrc

#ヒストリの上限値設定
echo 'export HISTSIZE=1000000' >>$HOME/.bashrc #オンメモリ
echo 'export HISTFILESIZE=1000000' >>$HOME/.bashrc #.bash_historyファイル

#優先度高いものほど下に追加
echo 'export PATH=/usr/local/bin:$PATH' >>$HOME/.bashrc
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>$HOME/.bashrc

#ダイナミックリンクパス バンドル系
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>$HOME/.bashrc

source $HOME/.bashrc