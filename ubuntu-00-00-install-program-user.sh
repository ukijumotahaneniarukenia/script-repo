#!/usr/bin/env bash

usage(){
cat <<EOS
Usage:
  CMD: bash ${0##./} 1002 elasticsearch 1002 elasticsearch elasticsearch_pwd

EOS
exit 0
}

USER_ID=$1;shift;
USER_NAME=$1;shift;
GROUP_ID=$1;shift;
GROUP_NAME=$1;shift;
PASSWORD=$1;shift;

if [ -z ${USER_ID} ];then
  usage
fi

if [ -z ${USER_NAME} ];then
  usage
fi

if [ -z ${GROUP_ID} ];then
  usage
fi

if [ -z ${GROUP_NAME} ];then
  usage
fi

if [ -z ${PASSWORD} ];then
  usage
fi

CHECK_EXISTS_USER_ID=$(cat /etc/passwd | grep ${USER_ID} | cut -d ':' -f3)
CHECK_EXISTS_USER_NAME=$(cat /etc/passwd | grep ${USER_NAME} | cut -d ':' -f1)
CHECK_EXISTS_GROUP_ID=$(cat /etc/passwd | grep ${GROUP_ID} | cut -d ':' -f4)
CHECK_EXISTS_GROUP_NAME=$(cat /etc/passwd | grep ${GROUP_NAME} | cut -d ':' -f5| cut -d ',' -f1)

IS_EXISTS=$CHECK_EXISTS_USER_ID$CHECK_EXISTS_USER_NAME$CHECK_EXISTS_GROUP_ID$CHECK_EXISTS_GROUP_NAME

if [ -z $IS_EXISTS ];then
  groupadd -g ${GROUP_ID} ${GROUP_NAME} && \
  useradd -m -g ${GROUP_NAME} -u ${USER_ID} ${USER_NAME} && \
  chsh -s /bin/bash ${USER_NAME} && \
  echo ${USER_NAME}':'${PASSWORD} | chpasswd && \
  echo "${USER_NAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
else
  echo already exists
  exit 0
fi
