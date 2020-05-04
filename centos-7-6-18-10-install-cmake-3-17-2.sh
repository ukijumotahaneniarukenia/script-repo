#!/usr/bin/env bash

gmake --version
#GNU Make 3.82
#Built for x86_64-redhat-linux-gnu
#Copyright (C) 2010  Free Software Foundation, Inc.
#License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
#This is free software: you are free to change and redistribute it.
#There is NO WARRANTY, to the extent permitted by law.

cd /usr/local/src
curl -sSLO https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2.tar.gz
tar xvf cmake-3.17.2.tar.gz
cd cmake-3.17.2
./configure && \
gmake -j12 && \
gmake -j12 install

cmake --version
