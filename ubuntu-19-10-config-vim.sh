#!/usr/bin/env bash

grep repo $HOME/.vim/.dein.toml | grep -oP '(?<=\x27)(.*)/(.*)(?=\x27)' | tr '/' ':' | awk 'match($0,/:/){ \
  lft=substr($0,1,RSTART-1);
  rgt=substr($0,RSTART+1,length($0));
  if(rgt !~ /.vim$/){
     rgt=rgt".vim"
  }
  print "mkdir -p $HOME/.vim/util/"lft" && [ -f $HOME/.vim/util/"lft"/"rgt" ] || touch $HOME/.vim/util/"lft"/"rgt
}' | bash
