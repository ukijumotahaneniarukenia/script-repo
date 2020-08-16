#!/usr/bin/env bash

#dockerホスト環境のubuntu-20-04ではインストールできなかった
#$ nimble install nimlsp
#Downloading https://github.com/PMunch/nimlsp using git
#io.nim(706)              writeFile
#Error: unhandled exception: cannot open: /tmp/nimblecache/nimscriptapi.nim [IOError]

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
