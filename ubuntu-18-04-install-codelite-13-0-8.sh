#!/usr/bin/env bash
apt install -y \
libgdk-pixbuf2.0-0 \
libgtk-3-0 \
libhunspell-1.6-0 \
libpango-1.0-0 \
libpangocairo-1.0-0 \
libpangoft2-1.0-0

cd /usr/local/src
curl -sSLO https://downloads.codelite.org/codelite/13.0.8/CodeLite-13.0.8-gtk3-ubuntu-bionic-x86_64.deb
dpkg -i CodeLite-13.0.8-gtk3-ubuntu-bionic-x86_64.deb
