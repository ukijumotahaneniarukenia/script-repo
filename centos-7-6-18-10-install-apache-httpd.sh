#!/usr/bin/env bash
yum install -y httpd
chown -R apache:apache /var/www && chmod 755 /var/www
