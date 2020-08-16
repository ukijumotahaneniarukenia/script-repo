#!/usr/bin/env bash


#たまにコケるときは以下のファイルを削除するなど
#sudo rm /tmp/nimblecache/nimscriptapi.nim
#sudo rm /tmp/choosenim-0.6.0_linux_amd64

#実行ユーザー単位でインストールする方法に切り替え
#プロンプト聞かれるので、yと答える
curl https://nim-lang.org/choosenim/init.sh -sSf | sh

choosenim stable

#プロンプトあるので、yesと答える
#https://github.com/PMunch/nimlsp
nimble install nimlsp


#正常にインストールできたが、nvimの補完が効かず苦しんでいるときは以下の方法をためす
#やけにセグフォルなど

#nvim a.nimのように開かず、
#
#nvimとしてひらき、
#
#cat <<EOS
#import algorithm
#
#
#var a = [1,2,3,4]
#
#
#echo a
#
#
#echo a.reversed
#EOS
#
#と入力してから、
#
#nvim a.nimとして開くといい感じになった
