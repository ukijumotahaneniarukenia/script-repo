#!/usr/bin/env bash

apt install git automake bison build-essential pkg-config libevent-dev libncurses5-dev && \
cd /usr/local/src/ && \
git clone https://github.com/tmux/tmux && \
cd tmux/ && \
./autogen.sh && \
./configure --prefix=/usr/local && \
make -j12 && \
make -j12 install && \
tmux -V
