#!/usr/bin/env bash
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>~/.bashrc
echo 'export JAVA_HOME=/usr/local/src/jdk-11' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc

echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>~/launch_pycharm.log 2>&1 &"' >>~/.bashrc
echo 'alias qtd="( mkdir -p $HOME/qt-wrksp && export XDG_RUNTIME_DIR=$HOME/qt-wrksp && cd /usr/lib/x86_64-linux-gnu/qt5/bin && ./designer 1>~/launch_qt_designer.log 2>&1 </dev/null & )"' >>~/.bashrc
