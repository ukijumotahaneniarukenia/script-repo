#!/usr/bin/env bash

#最新版数
curl -s https://api.github.com/repos/docker/compose/releases/latest | jq .name -r

#OS名
uname -s

#アーキテクチャ名
uname -m

curl -fsSL https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose


docker-compose --version
