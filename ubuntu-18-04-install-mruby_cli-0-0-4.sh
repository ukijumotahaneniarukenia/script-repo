#!/usr/bin/env bash

cd /usr/local/src

curl -fsSLO https://github.com/hone/mruby-cli/releases/download/v0.0.4/mruby-cli-0.0.4-x86_64-pc-linux-gnu.tgz

tar xvf mruby-cli-0.0.4-x86_64-pc-linux-gnu.tgz

mv mruby-cli /usr/local/bin/mruby-cli

mruby-cli --version
