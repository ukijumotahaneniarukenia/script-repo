#!/usr/bin/env bash
yum install -y https://packages.groonga.org/centos/7/groonga-release-latest.noarch.rpm
yum install -y --enablerepo=epel groonga
yum install -y --enablerepo=epel groonga-tokenizer-mecab
yum install -y --enablerepo=epel groonga-munin-plugins
yum install -y --enablerepo=epel groonga-normalizer-mysql
