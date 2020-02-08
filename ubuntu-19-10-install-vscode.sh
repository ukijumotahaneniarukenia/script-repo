#!/usr/bin/env bash
apt install -y \
libnotify4 \
libxkbfile1 \
libxss1 \
libsecret-1-0 \
libasound2 \
gnupg

cd /usr/local/src && \
dpkg -i code_1.41.1-1576681836_amd64.deb
