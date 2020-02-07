#!/usr/bin/env bash
{ echo "[nginx]";\
  echo "name=nginx repo";\
  echo "baseurl=https://nginx.org/packages/centos/7/x86_64/";\
  echo "gpgcheck=0";\
  echo "enabled=1";\
} >> /etc/yum.repos.d/nginx.repo
yum install -y nginx
