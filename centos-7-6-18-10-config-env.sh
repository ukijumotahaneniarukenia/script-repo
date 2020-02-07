#!/usr/bin/env bash
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>~/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/local/src/jdk-11' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export GOROOT=/usr/local/src/go'>>~/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH'>>~/.bashrc
