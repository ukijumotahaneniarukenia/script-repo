#!/usr/bin/env bash
cd /usr/local/src
wget -O KDevelop.AppImage https://download.kde.org/stable/kdevelop/5.5.0/bin/linux/KDevelop-5.5.0-x86_64.AppImage
chmod +x KDevelop.AppImage
mv KDevelop.AppImage /usr/local/bin
apt install -y fuse
groupadd fuse
usermod -a -G fuse kuraine #自動化を視野に入れるとこの行が融通効いていないけどいまはこれでいい
