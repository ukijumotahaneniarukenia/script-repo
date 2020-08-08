#!/usr/bin/env bash

#http://videlibri.sourceforge.net/xidel.html
#xidel-0.9.8.linux64.tar.gz

cd /usr/local/src
mkdir -p /usr/local/src/xidel-0.9.8
tar xvf xidel-0.9.8.linux64.tar.gz -C /usr/local/src/xidel-0.9.8
chown -R root:root /usr/local/src/xidel-0.9.8
cp /usr/local/src/xidel-0.9.8/xidel /usr/local/bin/xidel
