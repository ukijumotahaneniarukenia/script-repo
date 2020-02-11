#!/usr/bin/env bash
cd /usr/local/src && \
wget -O mecab-0.996.tar.gz "https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE" && \
tar -xzf mecab-0.996.tar.gz && \
cd mecab-0.996 && \
./configure --enable-utf8-only && \
make -j12 && \
make -j12 install
