#!/usr/bin/env bash

cd /usr/local/src

pip3 install --upgrade pip

pip3 install SIP

pip3 install PyQt5

pip3 install PySide2

pip3 install PyQtWebEngine

strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
