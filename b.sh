#!/bin/bash

ls $HOME/script-repo | grep script-env | while read tgt;do
  FILE=$(echo /tmp/$tgt)
  grep -vP 'root|aine|kuraine|nahato|mujiku' $tgt >$FILE
  RESULT="$(grep -vP 'bash' /tmp/$tgt)"
  if [ "XXX" == "XXX$RESULT" ] ;then
    echo non-tgt
  else
    echo $HOME/script-repo/$tgt
  fi
done | grep -vP 'non-tgt'

find /tmp -type f -name "*script-env*" 2>/dev/null | xargs rm
