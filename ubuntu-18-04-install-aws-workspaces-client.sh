#!/usr/bin/env bash

wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | apt-key add -

echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | tee /etc/apt/sources.list.d/amazon-workspaces-clients.list

apt-get -y update

apt-get -y install workspacesclient
