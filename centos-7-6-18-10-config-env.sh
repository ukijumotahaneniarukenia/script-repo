#!/usr/bin/env bash

#ホームディレクトリとホームディレクトリ以外なのか

JAVA_VERSION=$1;shift;
MAVEN_VERSION=$1;shift;
GRADLE_VERSION=$1;shift;
GRAALVM_VERSION=$1;shift;
APACHE_SOLR_VERSION=$1;shift;
APACHE_SPARK_VERSION=$1;shift;
HADOOP_VERSION=$1;shift;

DEFAULT_JAVA_VERSION=11
DEFAULT_MAVEN_VERSION=3-6-3
DEFAULT_GRADLE_VERSION=6-1
DEFAULT_GRAALVM_VERSION=20-1-0
DEFAULT_APACHE_SOLR_VERSION=8-5-1
DEFAULT_APACHE_SPARK_VERSION=3-0-0
DEFAULT_HADOOP_VERSION=3-2
DEFAULT_IDEA_VERSION=201-7846-76

if [ -z $JAVA_VERSION ];then
  :
else
  DEFAULT_JAVA_VERSION=$JAVA_VERSION
fi

if [ -z $MAVEN_VERSION ];then
  :
else
  DEFAULT_MAVEN_VERSION=$MAVEN_VERSION
fi

if [ -z $GRADLE_VERSION ];then
  :
else
  DEFAULT_GRADLE_VERSION=$GRADLE_VERSION
fi

if [ -z $GRAALVM_VERSION ];then
  :
else
  DEFAULT_GRAALVM_VERSION=$GRAALVM_VERSION
fi

if [ -z $APACHE_SOLR_VERSION ];then
  :
else
  DEFAULT_APACHE_SOLR_VERSION_VERSION=$APACHE_SOLR_VERSION
fi

if [ -z $APACHE_SPARK_VERSION ];then
  :
else
  DEFAULT_APACHE_SPARK_VERSION=$APACHE_SPARK_VERSION
fi

if [ -z $HADOOP_VERSION ];then
  :
else
  DEFAULT_HADOOP_VERSION=$HADOOP_VERSION
fi

#バージョン情報に影響しないパス設定 便利
echo 'export ELASTICSEARCH_HOME=/usr/share/elasticsearch'>>$HOME/.bashrc
echo 'export PATH=$ELASTICSEARCH_HOME/bin:$PATH'>>$HOME/.bashrc
mkdir -p $HOME/.local/go-script/bin
echo 'export GOPATH=$HOME/.local/go-repo' >>$HOME/.bashrc
echo 'export PATH=$GOPATH/bin:$PATH' >>$HOME/.bashrc
echo 'export PATH=/usr/local/src/go/bin:$PATH' >>$HOME/.bashrc
echo 'export CHROME_LINUX_HOME=/usr/local/src/chrome-linux' >>$HOME/.bashrc
echo 'export PATH=$CHROME_LINUX_HOME:$PATH' >>$HOME/.bashrc
echo 'export CHROME_DRIVER_HOME=/usr/local/src/chromedriver_linux64' >>$HOME/.bashrc
echo 'export PATH=$CHROME_DRIVER_HOME:$PATH' >>$HOME/.bashrc

#バージョン情報に影響されるパス設定 引数あれば上書きして設定
echo "export JAVA_HOME=/usr/local/src/jdk-$(echo $DEFAULT_JAVA_VERSION|tr '-' '.' )" >> $HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export MAVEN_HOME=/usr/local/src/apache-maven-$(echo $DEFAULT_MAVEN_VERSION|tr '-' '.' )">>$HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export APACHE_SOLR_HOME=/usr/local/src/solr-$(echo $DEFAULT_APACHE_SOLR_VERSION|tr '-' '.')" >>$HOME/.bashrc
echo 'export PATH=$APACHE_SOLR_HOME/bin:$PATH' >>$HOME/.bashrc
echo "export GRADLE_HOME=/usr/local/src/gradle-$(echo $DEFAULT_GRADLE_VERSION|tr '-' '.')">>$HOME/.bashrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export APACHE_SPARK_HOME=/usr/local/src/spark-$DEFAULT_APACHE_SPARK_VERSION-preview2-bin-hadoop$DEFAULT_HADOOP_VERSION" >>$HOME/.bashrc
echo 'export PATH=$APACHE_SPARK_HOME/bin:$APACHE_SPARK_HOME/sbin:$PATH' >>$HOME/.bashrc


echo "export GRAALVM_HOME=/usr/local/src/graalvm-ce-java$(echo $DEFAULT_JAVA_VERSION|tr '-' '.' )-$(echo $DEFAULT_GRAALVM_VERSION|tr '-' '.' )" >>$HOME/.bashrc
echo 'export PATH=$GRAALVM_HOME/bin:$PATH' >>$HOME/.bashrc


#sdkman系
echo "export SDKMAN_GRADLE_HOME=$HOME/.sdkman/candidates/gradle/$(echo $DEFAULT_GRADLE_VERSION|tr '-' '.')">>$HOME/.bashrc
echo 'export PATH=$SDKMAN_GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc


#swift ハードでいいや
echo 'export SWIFT_HOME=/usr/local/src/swift-5.2.4-RELEASE-ubuntu20.04/usr' >>$HOME/.bashrc
echo 'export PATH=$SWIFT_HOME/bin:$PATH' >>$HOME/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/src/swift-5.2.4-RELEASE-ubuntu20.04/usr/lib/swift/linux:$LD_LIBRARY_PATH' >>$HOME/.bashrc
cp /usr/local/src/swift-5.2.4-RELEASE-ubuntu20.04/usr/bin/sourcekit-lsp /usr/local/bin/sourcekit-lsp


#エディタ系
echo "alias idea=\"/usr/local/src/idea-IC-$(echo $DEFAULT_IDEA_VERSION|tr '-' '.')/bin/idea.sh >$HOME/launch-idea.log 2>&1 &\"" >> $HOME/.bashrc

echo 'alias pyc="bash /usr/local/src/pycharm-community-2019.3.1/bin/pycharm.sh 1>$HOME/launch-pycharm.log 2>&1 &"' >>$HOME/.bashrc

echo 'alias myb="mysql-workbench 1>$HOME/launch-mysql-bench.log 2>&1 &"' >>$HOME/.bashrc

echo 'alias qtd="( mkdir -p $HOME/qt-wrksp && export XDG_RUNTIME_DIR=$HOME/qt-wrksp && cd /usr/lib/x86_64-linux-gnu/qt5/bin && ./designer 1>$HOME/launch-qt-designer.log 2>&1 </dev/null & )"' >>$HOME/.bashrc


echo 'export ANDROID_STUDIO_HOME=/usr/local/src/android-studio' >> $HOME/.bashrc
echo 'export PATH=$ANDROID_STUDIO_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'alias and="studio.sh 1>$HOME/launch-android-studio.log 2>&1 &"' >> $HOME/.bashrc


#移動系
echo 'alias repo="cd /usr/local/src/script-repo"' >> $HOME/.bashrc

#優先度高いものほど下に追加
echo 'export PATH=/usr/local/bin:$PATH' >>$HOME/.bashrc
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>$HOME/.bashrc

#ダイナミックリンクパス バンドル系
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>$HOME/.bashrc

source $HOME/.bashrc
