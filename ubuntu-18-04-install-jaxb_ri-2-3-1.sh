#!/usr/bin/env bash

#https://javaee.github.io/jaxb-v2/

cd /usr/local/src

curl -fsSLO https://repo1.maven.org/maven2/com/sun/xml/bind/jaxb-ri/2.3.1/jaxb-ri-2.3.1.zip

unzip jaxb-ri-2.3.1.zip

ln -fsr /usr/local/src/jaxb-ri/bin/xjc.sh /usr/local/src/jaxb-ri/bin/xjc

ln -fsr /usr/local/src/jaxb-ri/bin/schemagen.sh /usr/local/src/jaxb-ri/bin/schemagen
