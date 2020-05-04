#!/usr/bin/env bash
cd /usr/local/src/
curl -sSLO https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.1.tar.gz
tar xvf ruby-2.7.1.tar.gz
cd ruby-2.7.1
./configure
make -j12
make -j12 install

#vscodeでruby-solargraph（コード補完）を使用できるようにするための設定
#solargraphが2.1以上なので、ここにまとめてかいた
ruby --version
gem --version
gem install solargraph
gem install rubocop
solargraph help

#実施後vscodeでruby-solargraphをインストール
