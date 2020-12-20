#!/usr/bin/env bash

apt install -y webpack


#$ file /usr/bin/webpack
#/usr/bin/webpack: symbolic link to ../share/nodejs/webpack/bin/webpack.js
#
#$ readlink -f /usr/bin/webpack
#/usr/share/nodejs/webpack/bin/webpack.js

