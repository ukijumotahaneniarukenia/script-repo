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
