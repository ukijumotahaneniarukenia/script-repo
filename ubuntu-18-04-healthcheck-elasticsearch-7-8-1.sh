#!/usr/bin/env bash

SCRIPT_USER=$(whoami)
HEALTH_CHECK_USER=elasticsearch

if [ ${SCRIPT_USER} == ${LAUNCH_USER} ];then

  lsof -i:9200 -P

  ps auxwwf

  curl http://localhost:9200

else

  echo must be $LAUNCH_USER

fi
