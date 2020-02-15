# script-repo

# フォント

- https://manabu.github.io/font-1/
- https://ics.media/entry/7010/


# Ubuntuの場合

- 自身のコンテナOSバージョンに紐づくスクリプトを実行する

XXXが検索ワード

```
cd /usr/local/src/script-repo
ls | grep XXX | grep $(cat /etc/os-release | grep VERSION_ID | perl -pe 's;.*=;;' | perl -pe 's;";;g' | perl -pe 's;\.;-;') | xargs -I@ bash @
```



```
cd /usr/local/src/script-repo
cat /etc/os-release  | grep VERSION_ID | perl -pe 's;(.*)([0-9]{2}\.[0-9]{2})(.*);\2;' | while read tgt;do ls | grep $tgt; done | grep env
```


- メンテに使える

```
https://qiita.com/mumian1014/items/bb71b0520e457f3b2466

■第１引数に指定したファイルにしか存在しない行の抽出

comm -23 --nocheck-order <(sort centos-7-6-18-10-config-env.sh | sed -r '/^$/d') <(sort ubuntu-16-04-config-env.sh | sed -r '/^$/d')

■第２引数に指定したファイルにしか存在しない行の抽出

comm -13 --nocheck-order <(sort centos-7-6-18-10-config-env.sh | sed -r '/^$/d') <(sort ubuntu-16-04-config-env.sh | sed -r '/^$/d')

■第１、２引数に指定したファイルに共通に存在する行の抽出

comm -12 --nocheck-order <(sort centos-7-6-18-10-config-env.sh | sed -r '/^$/d') <(sort ubuntu-16-04-config-env.sh | sed -r '/^$/d')

■第１、２引数に指定したファイルに共通に存在する行を除いた行の抽出

comm -3 --nocheck-order <(sort centos-7-6-18-10-config-env.sh | sed -r '/^$/d') <(sort ubuntu-16-04-config-env.sh | sed -r '/^$/d') | sed 's;^\t;;'
```
