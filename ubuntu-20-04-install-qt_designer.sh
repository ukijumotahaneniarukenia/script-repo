#!/usr/bin/env bash

cd /usr/local/src

apt install -y qttools5-dev-tools qttools5-dev

apt install -y python3-qtpy pyqt5-dev pyqt5-dev-tools python3-pyqt5 libqt5widgets5 libqt5gui5 libqt5dbus5 libqt5network5 libqt5core5a

pip3 install --upgrade pip

pip3 install SIP

pip3 install PyQt5

pip3 install PySide2

pip3 install PyQtWebEngine

strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
