#!/usr/bin/env bash
echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local-lib.conf
ldconfig -v
