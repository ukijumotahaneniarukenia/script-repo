#!/usr/bin/env bash

cd /usr/local/src

curl -fsSLO https://github.com/OpenShot/openshot-qt/releases/download/v2.5.1/OpenShot-v2.5.1-x86_64.AppImage

ls -lh OpenShot-v2.5.1-x86_64.AppImage
#-rw-r--r-- 1 root root 133M  9月 18 10:36 OpenShot-v2.5.1-x86_64.AppImage

chmod 755 OpenShot-v2.5.1-x86_64.AppImage
#-rwxr-xr-x 1 root root 133M  9月 18 10:36 OpenShot-v2.5.1-x86_64.AppImage

#デスクトップに登録するか聞かれるので、「はい」と答える
./OpenShot-v2.5.1-x86_64.AppImage

#２回目以降はデスクトップアイコンから起動できる
