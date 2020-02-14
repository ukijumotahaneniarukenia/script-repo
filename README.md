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
