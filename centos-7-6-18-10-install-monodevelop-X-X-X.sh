#!/usr/bin/env bash

#Csharpの開発環境
#https://www.monodevelop.com/download/#fndtn-download-lin-centos

cd /usr/local/src

rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"

su -c 'curl https://download.mono-project.com/repo/centos7-vs.repo | tee /etc/yum.repos.d/mono-centos7-vs.repo'

yum install -y monodevelop

monodevelop --help
