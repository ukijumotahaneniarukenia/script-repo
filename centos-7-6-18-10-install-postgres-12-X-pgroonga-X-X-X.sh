#!/usr/bin/env bash
cd /usr/local/src

yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-$(rpm -qf --queryformat="%{VERSION}" /etc/redhat-release)-$(rpm -qf --queryformat="%{ARCH}" /etc/redhat-release)/pgdg-redhat-repo-latest.noarch.rpm


yum install -y https://packages.groonga.org/centos/groonga-release-latest.noarch.rpm


yum install -y postgresql12-pgroonga


yum install -y groonga-tokenizer-mecab
