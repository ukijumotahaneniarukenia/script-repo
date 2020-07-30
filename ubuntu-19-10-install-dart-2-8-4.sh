#!/usr/bin/env bash

#https://dart.dev/get-dart

cd /usr/local/src

apt-get update

apt-get install -y apt-transport-https


sh -c 'wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -O - | apt-key add -'

sh -c 'wget -q https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list -O - > /etc/apt/sources.list.d/dart_stable.list'

apt-get update

which dart
#/usr/bin/dart

dart --version
#Dart VM version: 2.8.4 (stable) (Unknown timestamp) on "linux_x64"
