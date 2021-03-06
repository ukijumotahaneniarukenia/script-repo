#!/usr/bin/env bash
cd /usr/local/src

#https://dev.mysql.com/downloads/workbench/
#curl -sSLO mysql-workbench-community_8.0.21-1ubuntu20.04_amd64.deb

apt install -y \
    canberra-gtk* \
    libatkmm-1.6-dev \
    libcairo2-dev \
    libgdk-pixbuf2.0-dev \
    libglibmm-2.4-dev \
    libgtk-3-dev \
    libgtk2.0-dev \
    libgtkmm-3.0-dev \
    libmysqlclient21 \
    libpangocairo-1.0-0 \
    libpcrecpp0v5 \
    libproj-dev \
    libquazip5-dev \
    libsecret-1-dev \
    libsigc++-2.0-dev \
    libxml2-dev \
    libzip5 \
    packagekit-gtk3-module \
    proj-bin \
    python2.7-dev


export NO_AT_BRIDGE=1

dpkg -i mysql-workbench-community_8.0.21-1ubuntu20.04_amd64.deb
