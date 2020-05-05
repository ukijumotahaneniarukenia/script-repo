#!/usr/bin/env bash
apt install -y software-properties-common
add-apt-repository ppa:ondrej/php
apt-get update
apt install -y php7.4
