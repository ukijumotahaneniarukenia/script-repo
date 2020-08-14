#!/usr/bin/env bash

#https://javaee.github.io/jaxb-v2/

cd /usr/local/src

curl -fsSLO https://repo1.maven.org/maven2/com/sun/xml/bind/jaxb-ri/2.3.1/jaxb-ri-2.3.1.zip

unzip jaxb-ri-2.3.1.zip

ln -fsr /usr/local/src/jaxb-ri/bin/xjc.sh /usr/local/src/jaxb-ri/bin/xjc

ln -fsr /usr/local/src/jaxb-ri/bin/schemagen.sh /usr/local/src/jaxb-ri/bin/schemagen


#このままだと以下のエラーがでて使えなかったので、

#Error occurred during initialization of boot layer
#java.lang.module.FindException: Module java.activation not found, required by java.xml.bind

#これを追加しておく
#https://mvnrepository.com/artifact/com.sun.activation/javax.activation/1.2.0

#似たような案件
#https://qiita.com/Targityen/items/08d2846c5b6639e805ef
cd /usr/local/src/jaxb-ri/mod
curl -sSLO https://repo1.maven.org/maven2/com/sun/activation/javax.activation/1.2.0/javax.activation-1.2.0.jar
