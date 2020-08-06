#!/usr/bin/env bash

SCRIPT_USER=$(whoami)
LAUNCH_USER=elasticsearch

if [ ${SCRIPT_USER} == ${LAUNCH_USER} ];then

  cd $HOME

  elasticsearch -d --verbose 1>$HOME/launch-elasticsearch.log 2>&1

  lsof -i:9200 -P

  ps auxwwf
else

  echo must be $LAUNCH_USER

fi
