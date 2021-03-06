#!/usr/bin/env bash
apt install -y \
gcc \
autoconf \
asciidoc \
xmlto \
gettext \
libexpat1-dev \
libssl-dev

ln -fns /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi && \
cd /usr/local/src && \
curl -LkvOf https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.24.1.tar.gz && \
tar xvf git-2.24.1.tar.gz && \
cd git-2.24.1 && \
make -j12 prefix=/usr/local all && \
make -j12 prefix=/usr/local install
