#!/usr/bin/env bash
yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
yum -y install --enablerepo=remi,remi-php73 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt
