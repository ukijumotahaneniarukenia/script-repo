#!/usr/bin/env bash

cd /usr/local/src && \
wget http://pkgs.fedoraproject.org/repo/pkgs/mecab-java/mecab-java-0.996.tar.gz/e50066ae2458a47b5fdc7e119ccd9fdd/mecab-java-0.996.tar.gz && \
tar xvf mecab-java-0.996.tar.gz && \
cd mecab-java-0.996 && \
sed -i 's;INCLUDE=/usr/lib/jvm/java-6-openjdk/include;INCLUDE=/usr/local/src/jdk-11/include;' /usr/local/src/mecab-java-0.996/Makefile && \
make -j12 && \
mv /usr/local/src/mecab-java-0.996/libMeCab.so /usr/local/lib/libMeCab.so && \
ldconfig -v && \
java test
