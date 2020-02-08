#!/usr/bin/env bash
yum install -y gnome-keyring gtkmm30 mesa-libGLU atkmm cairomm pangomm libsigc++20 libzip-devel && \
cd /usr/local/src && \
yum install -y  mysql-workbench-community-8.0.19-1.el7.x86_64.rpm
