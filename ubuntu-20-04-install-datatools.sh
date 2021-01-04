#!/usr/bin/env bash

#https://github.com/caltechlibrary/datatools/releases/tag/v0.0.25

cd /usr/local/src

curl -fsSLO https://github.com/caltechlibrary/datatools/releases/download/v0.0.25/datatools-v0.0.25-linux-amd64.zip

mkdir -p /usr/local/src/datatools

unzip datatools-v0.0.25-linux-amd64.zip -d datatools
