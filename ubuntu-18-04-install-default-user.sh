#!/usr/bin/env bash

DEFAULT_USER_ID=9999
DEFAULT_USER_NAME=kuraine
DEFAULT_GROUP_ID=9999
DEFAULT_GROUP_NAME=kuraine

USER_ID=$1;shift;
USER_NAME=$1;shift;
GROUP_ID=$1;shift;
GROUP_NAME=$1;shift;

if [ -z $USER_ID ];then
  :
else
  DEFAULT_USER_ID=$USER_ID
fi

if [ -z $USER_NAME ];then
  :
else
  DEFAULT_USER_NAME=$USER_NAME
fi

if [ -z $GROUP_ID ];then
  :
else
  DEFAULT_GROUP_ID=$GROUP_ID
fi

if [ -z $GROUP_NAME ];then
  :
else
  DEFAULT_GROUP_NAME=$GROUP_NAME
fi

groupadd -g $DEFAULT_GROUP_ID $DEFAULT_GROUP_NAME && \
useradd -m -g $DEFAULT_GROUP_NAME -u $DEFAULT_USER_ID $DEFAULT_USER_NAME && \
chsh -s /bin/bash $DEFAULT_USER_NAME && \
echo $DEFAULT_USER_NAME':'$DEFAULT_USER_NAME'_pwd' | chpasswd && \
echo "$DEFAULT_USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
echo 'root:root_pwd' | chpasswd
