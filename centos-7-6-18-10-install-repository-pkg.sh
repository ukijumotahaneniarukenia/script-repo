#!/usr/bin/env bash
yum install -y \
epel-release

#警告メッセージを抑止するために、GPG鍵をインポート
rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7

yum update -y
yum upgrade -y
