#!/usr/bin/env bash
cd /usr/local/src

#https://dev.mysql.com/downloads/workbench/
#curl -sSLO mysql-workbench-community-8.0.20-1.el7.x86_64.rpm

yum install -y \
    gnome-keyring \
    gtkmm30 \
    mesa-libGLU \
    atkmm \
    cairomm \
    pangomm \
    libsigc++20 \
    libzip-devel

#yum install -y /usr/local/src/mysql-workbench-community-8.0.20-1.el7.x86_64.rpm
