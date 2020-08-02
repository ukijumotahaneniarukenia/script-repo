#!/usr/bin/env bash

cd /usr/local/src

apt install -y fonts-liberation libappindicator3-1 libindicator3-7

curl -sSLO https://downloads.vivaldi.com/stable/vivaldi-stable_3.1.1929.48-1_amd64.deb

dpkg -i vivaldi-stable_3.1.1929.48-1_amd64.deb


which vivaldi
#/usr/bin/vivaldi

which vivaldi-stable
#/usr/bin/vivaldi-stable

