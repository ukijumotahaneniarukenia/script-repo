#!/usr/bin/env bash

#自作コマンド格納ディレクトリ
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>$HOME/.bashrc

echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>$HOME/.bashrc
echo 'export PATH=/usr/local/src/xml2json:$PATH'>>$HOME/.bashrc
echo 'export JAVA_HOME=/usr/local/src/jdk-11' >> $HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export MAVEN_HOME=/usr/local/src/apache-maven-3.6.3'>>$HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export GRADLE_HOME=/usr/local/src/gradle-6.1'>>$HOME/.bashrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export GOROOT=/usr/local/src/go'>>$HOME/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH'>>$HOME/.bashrc
echo 'export SWIFT_HOME=/usr/local/src/swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a-ubuntu18.04/usr' >>$HOME/.bashrc
echo 'export PATH=$SWIFT_HOME/bin:$PATH' >>$HOME/.bashrc
echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>$HOME/launch_pycharm.log 2>&1 &"' >>$HOME/.bashrc
echo 'alias qtd="( mkdir -p $HOME/qt-wrksp && export XDG_RUNTIME_DIR=$HOME/qt-wrksp && cd /usr/lib/x86_64-linux-gnu/qt5/bin && ./designer 1>$HOME/launch_qt_designer.log 2>&1 </dev/null & )"' >>$HOME/.bashrc

source $HOME/.bashrc
