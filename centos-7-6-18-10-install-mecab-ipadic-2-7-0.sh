#!/usr/bin/env bash
cd /usr/local/src && \
wget -O mecab-ipadic-2.7.0-20070801.tar.gz "https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7MWVlSDBCSXZMTXM" && \
tar -xzf mecab-ipadic-2.7.0-20070801.tar.gz && \
cd mecab-ipadic-2.7.0-20070801 && \
./configure --with-charset=utf8 && \
make -j12 && \
make -j12 install
