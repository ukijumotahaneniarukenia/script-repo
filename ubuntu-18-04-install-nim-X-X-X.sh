#!/usr/bin/env bash

#システム共通としてインストールするのではなく
#cd /usr/local/src
#
#curl -fsSLO https://nim-lang.org/download/nim-1.2.4-linux_x64.tar.xz
#
#tar xvf nim-1.2.4-linux_x64.tar.xz
#
#cd nim-1.2.4
#
#./install.sh /usr/local/bin
#
#./koch nimble
#
#ln -fsr /usr/local/src/nim-1.2.4/bin/nimble /usr/local/bin/nimble
#
#
#which nimble
##/usr/local/bin/nimble
#
#readlink -f /usr/local/bin/nimble
##/usr/local/src/nim-1.2.4/bin/nimble
#

#実行ユーザー単位でインストールする方法に切り替え
#プロンプト聞かれるので、yと答える
curl https://nim-lang.org/choosenim/init.sh -sSf | sh


#choosenim stable
