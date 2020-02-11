#!/bin/bash

src="$1"

[ -z "$src" ] && exit 1

while read tgt;do

  echo "cp "$src" "$tgt

done < <(ls /usr/local/src/script-repo | grep -Po '[a-z]+(-[0-9]{1,}){1,}' | grep -P 'ubuntu|centos' | sort | uniq | xargs -I@ echo "@$(echo "$src" | grep -Po '\-install.*')")
