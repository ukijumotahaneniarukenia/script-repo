#!/usr/bin/env bash
apt-get install -y git gcc autoconf automake make lua5.3 luajit liblua5.3-0 liblua5.3-dev libperl-dev libpython-dev python-dev python3-dev tcl tcl-dev ruby-dev perl5*-dev
ldconfig -v
grep '^deb ' /etc/apt/sources.list | sed 's/^deb/deb-src/g' > /etc/apt/sources.list.d/deb-src.list && \
apt-get update && \
apt-get build-dep -y vim && \
cd /usr/local/src && \
git clone https://github.com/vim/vim.git && \
cd vim && \
./configure --with-features=huge --with-x --with-python-config-dir=/usr/lib/python3.7/config-3.7m-x86_64-linux-gnu --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic --enable-tclinterp=dynamic --enable-perlinterp=dynamic --enable-gui=auto --enable-gtk2-check && \
make -j12 && \
make -j12 install && \
ln -fsr /usr/local/bin/vim /usr/bin/vi
