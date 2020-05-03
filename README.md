こういうのやくにたちそう

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
