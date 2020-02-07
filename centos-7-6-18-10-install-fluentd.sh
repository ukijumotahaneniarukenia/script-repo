#!/usr/bin/env bash
{ echo "[treasuredata]";\
  echo "name=TreasureData";\
  echo "baseurl=http://packages.treasuredata.com/3/redhat/7/x86_64";\
  echo "gpgcheck=1";\
  echo "gpgkey=https://packages.treasuredata.com/GPG-KEY-td-agent";\
} >> /etc/yum.repos.d/td.repo
yum install -y td-agent
