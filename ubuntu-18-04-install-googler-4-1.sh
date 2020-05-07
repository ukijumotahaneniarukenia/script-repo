#!/usr/bin/env bash

#https://github.com/jarun/googler

cd /usr/local/src && \
curl -sSLO https://github.com/jarun/googler/releases/download/v4.1/googler_4.1-1_ubuntu18.04.amd64.deb && \
dpkg -i googler_4.1-1_ubuntu18.04.amd64.deb
