#!/usr/bin/env bash

cd /usr/local/src

wget http://ftp.iij.ad.jp/pub/linux/Fedora/archive/fedora/linux/releases/19/Everything/source/SRPMS/m/mozc-1.10.1390.102-1.fc19.src.rpm

yum -y install openssl-devel zlib-devel libxcb-devel  protobuf-devel glib2-devel qt-devel zinnia-devel gtk2-devel gyp  ibus-devel emacs xemacs xemacs-packages-extra

useradd -s /sbin/nologin mockbuild

rpm -ivh mozc-1.10.1390.102-1.fc19.src.rpm

cd $HOME/rpmbuild/SPECS/

sed -i "36a Requires:\tzinnia-tomoe-zh_CN" mozc.spec

sed -i "36a Requires:\tzinnia-tomoe-ja" mozc.spec

sed -i "36s/Requires:\tzinnia-tomoe/#Requires:\tzinnia-tomoe/g" mozc.spec

yum install -y rpm-build

rpmbuild -ba mozc.spec

cd $HOME/rpmbuild/RPMS

yum -y install zinnia-tomoe-ja zinnia-tomoe-zh_CN

rpm -ivh ./x86_64/mozc-1.10.1390.102-1.el7.x86_64.rpm

rpm -ivh ./x86_64/ibus-mozc-1.10.1390.102-1.el7.x86_64.rpm

