#!/usr/bin/env bash

#自作コマンド格納ディレクトリ
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>~/.bashrc

echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>~/.bashrc
echo 'export JAVA_HOME=/usr/local/src/jdk-11' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export MAVEN_HOME=/usr/local/src/apache-maven-3.6.3'>>~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export GRADLE_HOME=/usr/local/src/gradle-6.1'>>~/.bashrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> ~/.bashrc
echo 'export GOROOT=/usr/local/src/go'>>~/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH'>>~/.bashrc
echo 'export SWIFT_HOME=/usr/local/src/swift-DEVELOPMENT-SNAPSHOT-2020-01-31-a-ubuntu18.04/usr' >>~/.bashrc
echo 'export PATH=$SWIFT_HOME/bin:$PATH' >>~/.bashrc
echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>~/launch_pycharm.log 2>&1 &"' >>~/.bashrc
echo 'alias qtd="( mkdir -p $HOME/qt-wrksp && export XDG_RUNTIME_DIR=$HOME/qt-wrksp && cd /usr/lib/x86_64-linux-gnu/qt5/bin && ./designer 1>~/launch_qt_designer.log 2>&1 </dev/null & )"' >>~/.bashrc
