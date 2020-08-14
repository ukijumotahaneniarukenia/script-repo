#!/usr/bin/env bash

#https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge
#ユーザー登録はしなくて大丈夫
cd /usr/local/src

chown -R root:root p4v.tgz

tar xvf p4v.tgz

which p4merge
#/usr/local/src/p4v-2020.1.1966006/bin/p4merge

#qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
#This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.
#
#Available platform plugins are: minimal, offscreen, vnc, xcb.
#
#Aborted (core dumped)
#
#リンクエラーのとき
#$ find / -type f |& grep xcb 2>/dev/null | grep so$
#/usr/local/src/p4v-2020.1.1966006/lib/plugins/platforms/libqxcb.so
#aine ukijumotahaneniarukenia doc-ubuntu-20-04-vim 01:44:32 /usr/local/src/script-repo$
#$ ldd /usr/local/src/p4v-2020.1.1966006/lib/plugins/platforms/libqxcb.so
#	linux-vdso.so.1 (0x00007ffe62570000)
#	libQt5XcbQpa.so.5 => not found
#	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f74cfbb4000)
#	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f74cfaf5000)
#	libQt5Gui.so.5 => not found
#	libQt5DBus.so.5 => not found
#	libQt5Core.so.5 => not found
#	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f74cfad0000)
#	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007f74cfacb000)
#	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f74cfaa1000)
#	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f74cf897000)
#	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f74cf882000)
#	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f74cf745000)
#	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f74cf5f4000)
#	libxkbcommon-x11.so.0 => not found
#	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f74cf5b2000)
#	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f74cf5ac000)
#	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007f74cf3cb000)
#	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f74cf3b0000)
#	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f74cf1bc000)
#	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f74cf18e000)
#	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f74cf185000)
#	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f74cf14d000)
#	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f74cf131000)
#	/lib64/ld-linux-x86-64.so.2 (0x00007f74cfc09000)
#	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f74cf12b000)
#	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f74cf121000)
#	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f74cf107000)

#$ apt search libQt5XcbQpa
#Sorting... Done
#Full Text Search... Done
#
#
#$ apt search libQt5Gui
#Sorting... Done
#Full Text Search... Done
#libqt5gui5/focal 5.12.8+dfsg-0ubuntu1 amd64
#  Qt 5 GUI module
#
#libqt5gui5-gles/focal 5.12.8+dfsg-0ubuntu1 amd64
#  Qt 5 GUI module — OpenGL ES variant
#
#root ukijumotahaneniarukenia doc-ubuntu-20-04-vim 01:49:59 /usr/local/src/script-repo$
#$ apt search libQt5DBus
#Sorting... Done
#Full Text Search... Done
#libqt5dbus5/focal 5.12.8+dfsg-0ubuntu1 amd64
#  Qt 5 D-Bus module
#
#$ apt search libQt5Core
#Sorting... Done
#Full Text Search... Done
#libqt5core5a/focal 5.12.8+dfsg-0ubuntu1 amd64
#  Qt 5 core module

#ライブラリインストール
apt install -y libqt5gui5 libqt5dbus5 libqt5core5a


#うまくリンクされているとき
#$ ldd /usr/local/src/p4v-2020.1.1966006/lib/plugins/platforms/libqxcb.so
#	linux-vdso.so.1 (0x00007ffe1198c000)
#	libQt5XcbQpa.so.5 => /lib/x86_64-linux-gnu/libQt5XcbQpa.so.5 (0x00007fba96054000)
#	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007fba9600d000)
#	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007fba95f4e000)
#	libQt5Gui.so.5 => /lib/x86_64-linux-gnu/libQt5Gui.so.5 (0x00007fba95963000)
#	libQt5DBus.so.5 => /lib/x86_64-linux-gnu/libQt5DBus.so.5 (0x00007fba958c7000)
#	libQt5Core.so.5 => /lib/x86_64-linux-gnu/libQt5Core.so.5 (0x00007fba9537e000)
#	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007fba95359000)
#	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007fba95354000)
#	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007fba9532a000)
#	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007fba95120000)
#	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007fba9510b000)
#	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007fba94fce000)
#	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fba94e7d000)
#	libxkbcommon-x11.so.0 => /lib/x86_64-linux-gnu/libxkbcommon-x11.so.0 (0x00007fba94e72000)
#	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007fba94e30000)
#	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fba94e2a000)
#	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007fba94c49000)
#	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007fba94c2e000)
#	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fba94a3a000)
#	libxcb-xinput.so.0 => /lib/x86_64-linux-gnu/libxcb-xinput.so.0 (0x00007fba94a16000)
#	libxcb-icccm.so.4 => /lib/x86_64-linux-gnu/libxcb-icccm.so.4 (0x00007fba94a0f000)
#	libxcb-image.so.0 => /lib/x86_64-linux-gnu/libxcb-image.so.0 (0x00007fba9480a000)
#	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007fba94805000)
#	libxcb-keysyms.so.1 => /lib/x86_64-linux-gnu/libxcb-keysyms.so.1 (0x00007fba94800000)
#	libxcb-randr.so.0 => /lib/x86_64-linux-gnu/libxcb-randr.so.0 (0x00007fba947eb000)
#	libxcb-render-util.so.0 => /lib/x86_64-linux-gnu/libxcb-render-util.so.0 (0x00007fba947e4000)
#	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007fba947d5000)
#	libxcb-shape.so.0 => /lib/x86_64-linux-gnu/libxcb-shape.so.0 (0x00007fba947d0000)
#	libxcb-sync.so.1 => /lib/x86_64-linux-gnu/libxcb-sync.so.1 (0x00007fba947c6000)
#	libxcb-xfixes.so.0 => /lib/x86_64-linux-gnu/libxcb-xfixes.so.0 (0x00007fba947bc000)
#	libxcb-xinerama.so.0 => /lib/x86_64-linux-gnu/libxcb-xinerama.so.0 (0x00007fba947b5000)
#	libxcb-xkb.so.1 => /lib/x86_64-linux-gnu/libxcb-xkb.so.1 (0x00007fba94797000)
#	libSM.so.6 => /lib/x86_64-linux-gnu/libSM.so.6 (0x00007fba9478c000)
#	libICE.so.6 => /lib/x86_64-linux-gnu/libICE.so.6 (0x00007fba9476e000)
#	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007fba94645000)
#	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007fba94615000)
#	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007fba9460c000)
#	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007fba945d4000)
#	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007fba945b8000)
#	libGL.so.1 => /lib/x86_64-linux-gnu/libGL.so.1 (0x00007fba94530000)
#	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007fba9442b000)
#	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007fba943d8000)
#	libicui18n.so.66 => /lib/x86_64-linux-gnu/libicui18n.so.66 (0x00007fba940d9000)
#	libicuuc.so.66 => /lib/x86_64-linux-gnu/libicuuc.so.66 (0x00007fba93ef3000)
#	libpcre2-16.so.0 => /lib/x86_64-linux-gnu/libpcre2-16.so.0 (0x00007fba93e70000)
#	libdouble-conversion.so.3 => /lib/x86_64-linux-gnu/libdouble-conversion.so.3 (0x00007fba93e5a000)
#	/lib64/ld-linux-x86-64.so.2 (0x00007fba961f8000)
#	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007fba93e52000)
#	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007fba93e4a000)
#	libxcb-util.so.1 => /lib/x86_64-linux-gnu/libxcb-util.so.1 (0x00007fba93c44000)
#	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007fba93c2a000)
#	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007fba93bb7000)
#	libGLdispatch.so.0 => /lib/x86_64-linux-gnu/libGLdispatch.so.0 (0x00007fba93afd000)
#	libGLX.so.0 => /lib/x86_64-linux-gnu/libGLX.so.0 (0x00007fba93ac9000)
#	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007fba93a9c000)
#	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007fba939ef000)
#	libicudata.so.66 => /lib/x86_64-linux-gnu/libicudata.so.66 (0x00007fba91f2e000)
#	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007fba91f21000)
#	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007fba91efa000)
#	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007fba91ed9000)
#	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007fba91dbb000)
#	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007fba91d98000)

