#!/usr/bin/env bash
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>~/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/local/src/jdk-11' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export GOROOT=/usr/local/src/go'>>~/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH'>>~/.bashrc
echo 'export JETTY_HOME=/usr/local/src/jetty-distribution-9.4.24.v20191120' >> ~/.bashrc
echo 'export CATALINA_HOME=/usr/local/src/apache-tomcat-9.0.30' >> ~/.bashrc
echo 'export STS_HOME=/usr/local/src/sts-bundle/sts-3.9.11.RELEASE'>>~/.bashrc
echo 'export MAVEN_HOME=/usr/local/src/apache-maven-3.6.3'>>~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export PATH=$CATALINA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export PATH=$JETTY_HOME/bin:$PATH' >> ~/.bashrc
echo 'export PATH=$STS_HOME:$PATH' >> ~/.bashrc
echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> ~/.bashrc
echo 'export PERL5LIB=/home/perl/perl5/lib/perl5:/home/perl/perl5/lib/perl5/x86_64-linux-thread-multi' >> ~/.bashrc
echo 'export PATH=/usr/local/src/Komodo-Edit-11/bin:$PATH' >> ~/.bashrc
echo 'export CHROME_HOME=/usr/local/src/chromium-latest-linux/730479'>>~/.bashrc
echo 'export PATH=$CHROME_HOME/chrome-linux:$PATH'>>~/.bashrc

echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>~/launch-pycharm.log 2>&1 &"' >>~/.bashrc
echo 'alias idea="/usr/local/src/idea-IC-192.7142.36/bin/idea.sh >~/launch-idea.log 2>&1 &"' >> ~/.bashrc
echo 'alias myb="mysql-workbench 1>~/launch-mysql-bench.log 2>&1 &"' >>~/.bashrc
echo 'alias komo="komodo --verbose 1>~/launch-komodo.log 2>&1 &"' >> ~/.bashrc
