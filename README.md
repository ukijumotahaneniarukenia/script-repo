こういうのやくにたちそう

[git log](https://git-scm.com/book/ja/v2/Git-%E3%81%AE%E5%9F%BA%E6%9C%AC-%E3%82%B3%E3%83%9F%E3%83%83%E3%83%88%E5%B1%A5%E6%AD%B4%E3%81%AE%E9%96%B2%E8%A6%A7)

```
#!/usr/bin/env bash

cd /usr/local/src/script-repo

if [ "$(git ls-remote origin HEAD | awk '{print $1}')" = "$(git log --pretty=oneline | head -n1 | awk '{print $1}')" ]; then
	echo unko
else
	echo unkojanai
	git pull
fi
```
