#!/usr/bin/env bash

#http://brackets.io/
#
#https://github.com/adobe/brackets
#
#https://github.com/adobe/brackets/issues/14786#issuecomment-491285972

cd /usr/local/src

curl -fsSLO https://github.com/adobe/brackets/releases/download/release-1.14.1/Brackets.Release.1.14.1.64-bit.deb

dpkg-deb -R Brackets.Release.1.14.1.64-bit.deb Brackets

sed -i 's/libcurl3/libcurl3 \| libcurl4/' Brackets/DEBIAN/control

dpkg-deb -b Brackets Brackets-fixed.deb

dpkg -i Brackets-fixed.deb

which brackets
#/usr/bin/brackets

#拡張機能 右上の上から２つ目のアイコン タブで補完
#
#https://www.granfairs.com/blog/staff/efficiency-by-emmet-01
#
#- Emmet
