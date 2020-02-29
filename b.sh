#!/usr/bin/env bash

while read tgt;do

  FILE=$(echo $tgt | perl -pe 's/(?<=[0-9])-script-env//g;s;-env-usr\.sh;/env-usr\.md;g;s/script-repo/script-env-regression-test/g')
  #確認
  echo $FILE
  #作成
  touch $FILE
  >$FILE
  #抽出・書込
  grep -oP '\-g [0-9]+ [a-zA-Z]+|\-g [a-zA-Z]+ -u [0-9]+ [a-zA-Z]+|[a-zA-Z]+_pwd' $tgt | perl -pe 's/.*-u //g;s/-g //g;s/ /\n/g' | xargs -n5 | perl -pe 's/root_pwd/0 root 0 root root_pwd/g' | \
    sed -r '/^$/d;s;^|$| ;|;g;1i|ユーザーＩＤ|ユーザー名|グループＩＤ|グループ名|パスワード|' | sed '2i|:-:|:-:|:-:|:-:|:-:|' >$FILE

done < <(find $HOME/script-repo | grep script-env)
