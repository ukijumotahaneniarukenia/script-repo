#!/usr/bin/env bash
cd /usr/local/src

cat <<EOS >/etc/yum.repos.d/mongodb-org-4.0.repo
[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$(cat /etc/os-release | grep VERSION_ID | sed -r 's/.+=//g' | xargs)/mongodb-org/4.0/$(arch)/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc
EOS


yum -y update


yum install -y mongodb-org
