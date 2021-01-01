#!/usr/bin/env bash

cd /usr/local/src

git clone https://github.com/ryuichiueda/eki

cd eki

make install -j12
