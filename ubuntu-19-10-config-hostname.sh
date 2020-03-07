#!/usr/bin/env bash

HOST_NAME="$1"

usage(){
cat <<EOS
Usage:
  $0 hostname
EOS
exit 0
}

hostname -b $HOST_NAME
