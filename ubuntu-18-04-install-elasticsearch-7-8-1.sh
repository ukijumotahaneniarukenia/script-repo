#!/usr/bin/env bash

SCRIPT_USER=$(whoami)
LAUNCH_USER=elasticsearch

if [ ${SCRIPT_USER} == ${LAUNCH_USER} ];then

  cd $HOME

  curl -fsSLO https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-oss-7.8.1-linux-x86_64.tar.gz

  tar xvf elasticsearch-oss-7.8.1-linux-x86_64.tar.gz

  chown -R elasticsearch:elasticsearch $HOME/*

else

  echo must be $LAUNCH_USER

fi

