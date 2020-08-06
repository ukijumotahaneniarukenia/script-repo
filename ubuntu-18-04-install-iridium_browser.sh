#!/usr/bin/env bash

wget -q https://downloads.iridiumbrowser.de/ubuntu/iridium-release-sign-01.pub -O -|apt-key add -
cat <<EOF | tee /etc/apt/sources.list.d/iridium-browser.list
deb [arch=amd64] https://downloads.iridiumbrowser.de/deb/ stable main
#deb-src https://downloads.iridiumbrowser.de/deb/ stable main
EOF
apt update
apt install -y iridium-browser

which iridium-browser
#/usr/bin/iridium-browser
