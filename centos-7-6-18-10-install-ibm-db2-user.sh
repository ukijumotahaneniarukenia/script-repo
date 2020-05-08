#!/usr/bin/env bash

#ベンダ提供されているので、パスワードの変更のみ
#groupadd -g 1001 db2fadm1 && \
#useradd -g db2fadm1 -u 1001 db2fenc1 && \

#ベンダ提供のホームディレクトリ
#usermod -d /database/config/db2fenc1 db2fenc1

chsh -s /bin/bash db2fenc1 && \
echo 'db2fenc1_pwd' | passwd --stdin db2fenc1 && \
echo 'db2fenc1 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

#ベンダ提供されているので、パスワードの変更のみ
#groupadd -g 1002 db2iadm1 && \
#useradd -g db2iadm1 -u 1002 db2inst1 && \

#ベンダ提供のホームディレクトリ
#usermod -d /database/config/db2inst1 db2inst1

chsh -s /bin/bash db2inst1 && \
echo 'db2inst1_pwd' | passwd --stdin db2inst1 && \
echo 'db2inst1 ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
