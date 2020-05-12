#!/usr/bin/env bash


#イメージ

DEFAULT_JAVA_VERSION=11


#バージョン情報を切り出しておきたい。一括管理したいんで。

#当該スクリプトの引数にバージョン変数名:指定バージョンの可変長引数をうけとって指定があればうわがきするような感じのほうが、コンテナ内で
#同一ソフトが複数のバージョンが混在したときに当該単一ファイルで実行バージョンを変えることができる

#if [ -z ];then
#  DEFAULT_JAVA_VERSION=JAVA_VERSION
#else
#
#fi



#自作コマンド格納ディレクトリ
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>$HOME/.bashrc
echo 'export PATH=$HOME/.nimble/bin:$PATH' >>$HOME/.bashrc
echo 'export PATH=$HOME/script-sketch/nim/out:$PATH' >>$HOME/.bashrc

echo 'export ELASTICSEARCH_HOME=/usr/share/elasticsearch'>>$HOME/.bashrc
echo 'export PATH=$ELASTICSEARCH_HOME/bin:$PATH'>>$HOME/.bashrc
echo 'export PATH=/usr/local/src/xml2json:$PATH'>>$HOME/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>$HOME/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> $HOME/.bashrc
echo "'export JAVA_HOME=/usr/local/src/jdk-${DEFAULT_JAVA_VERSION}'" >> $HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export GOROOT=/usr/local/src/go'>>$HOME/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH'>>$HOME/.bashrc
echo 'export JETTY_HOME=/usr/local/src/jetty-distribution-9.4.24.v20191120' >> $HOME/.bashrc
echo 'export CATALINA_HOME=/usr/local/src/apache-tomcat-9.0.30' >> $HOME/.bashrc
echo 'export STS_HOME=/usr/local/src/sts-bundle/sts-3.9.11.RELEASE'>>$HOME/.bashrc
echo 'export MAVEN_HOME=/usr/local/src/apache-maven-3.6.3'>>$HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$CATALINA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$JETTY_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$STS_HOME:$PATH' >> $HOME/.bashrc
echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PERL5LIB=/home/perl/perl5/lib/perl5:/home/perl/perl5/lib/perl5/x86_64-linux-thread-multi' >> $HOME/.bashrc
echo 'export PATH=/usr/local/src/Komodo-Edit-11/bin:$PATH' >> $HOME/.bashrc
echo 'export CHROME_HOME=/usr/local/src/chromium-latest-linux/730479'>>$HOME/.bashrc
echo 'export PATH=$CHROME_HOME/chrome-linux:$PATH'>>$HOME/.bashrc

echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>$HOME/launch-pycharm.log 2>&1 &"' >>$HOME/.bashrc
echo 'alias idea="/usr/local/src/idea-IC-192.7142.36/bin/idea.sh >$HOME/launch-idea.log 2>&1 &"' >> $HOME/.bashrc
echo 'alias myb="mysql-workbench 1>$HOME/launch-mysql-bench.log 2>&1 &"' >>$HOME/.bashrc
echo 'alias komo="komodo --verbose 1>$HOME/launch-komodo.log 2>&1 &"' >> $HOME/.bashrc

echo 'alias repo="cd /usr/local/src/script-repo"' >> $HOME/.bashrc

echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>$HOME/launch_pycharm.log 2>&1 &"' >>$HOME/.bashrc
echo 'alias qtd="( mkdir -p $HOME/qt-wrksp && export XDG_RUNTIME_DIR=$HOME/qt-wrksp && cd /usr/lib/x86_64-linux-gnu/qt5/bin && ./designer 1>$HOME/launch-qt-designer.log 2>&1 </dev/null & )"' >>$HOME/.bashrc
echo 'export APACHE_SOLR_HOME=/usr/local/src/solr-8.4.1' >>$HOME/.bashrc
echo 'export GRADLE_HOME=/usr/local/src/gradle-6.1'>>$HOME/.bashrc
echo 'export PATH=$APACHE_SOLR_HOME/bin:$PATH' >>$HOME/.bashrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$SWIFT_HOME/bin:$PATH' >>$HOME/.bashrc
echo 'export SWIFT_HOME=/usr/local/src/swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a-ubuntu18.04/usr' >>$HOME/.bashrc



echo 'export PATH=/usr/local/bin:$PATH' >>$HOME/.bashrc


source $HOME/.bashrc
