#!/usr/bin/env bash

#torプロセス起動した上で有効になっていること
#https://qiita.com/syui/items/ebd6734a8102c7906cc1

#tor &

#torプロキシサーバー経由でネットワーク接続

DEFAULT_PROTOCOL_IP_PORT="socks5://127.0.0.1:9050"
CONNECTION_TIMEOUT_SECONDS=120

#コネクション保持期間を延ばす
#https://askubuntu.com/questions/88731/can-the-update-manager-download-only-a-single-package-at-a-time
cat <<EOS >>/etc/apt/apt.conf.d/75download
Acquire::Queue-Mode "access";
Acquire::http::Dl-Limit "$CONNECTION_TIMEOUT_SECONDS";
EOS

cat <<EOS >>/etc/apt/apt.conf
Acquire::http::Proxy "$DEFALUT_PROTOCOL_IP_PORT";
Acquire::https::Proxy "$DEFALUT_PROTOCOL_IP_PORT";
Acquire::ftp::Proxy "$DEFALUT_PROTOCOL_IP_PORT";
Acquire::rsync::Proxy "$DEFALUT_PROTOCOL_IP_PORT";
EOS

cat <<EOS >>/etc/environment
https_proxy=$DEFALUT_PROTOCOL_IP_PORT
http_proxy=$DEFALUT_PROTOCOL_IP_PORT
ftp_proxy=$DEFALUT_PROTOCOL_IP_PORT
rsync_proxy=$DEFALUT_PROTOCOL_IP_PORT
no_proxy=localhost,127.0.0.1
HTTPS_PROXY=$DEFALUT_PROTOCOL_IP_PORT
HTTP_PROXY=$DEFALUT_PROTOCOL_IP_PORT
FTP_PROXY=$DEFALUT_PROTOCOL_IP_PORT
RSYNC_PROXY=$DEFALUT_PROTOCOL_IP_PORT
NO_PROXY=localhost,127.0.0.1
EOS

cat <<EOS >>/etc/profile
export https_proxy=$DEFALUT_PROTOCOL_IP_PORT
export http_proxy=$DEFALUT_PROTOCOL_IP_PORT
export ftp_proxy=$DEFALUT_PROTOCOL_IP_PORT
rsync_proxy=$DEFALUT_PROTOCOL_IP_PORT
export no_proxy=localhost,127.0.0.1
export HTTPS_PROXY=$DEFALUT_PROTOCOL_IP_PORT
export HTTP_PROXY=$DEFALUT_PROTOCOL_IP_PORT
export FTP_PROXY=$DEFALUT_PROTOCOL_IP_PORT
RSYNC_PROXY=$DEFALUT_PROTOCOL_IP_PORT
export NO_PROXY=localhost,127.0.0.1
EOS

source /etc/environment
source /etc/profile
