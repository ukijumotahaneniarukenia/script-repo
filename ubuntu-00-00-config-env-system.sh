#!/usr/bin/env bash

OS_VERSION=$(cat /etc/os-release | grep VERSION_ID | xargs | sed 's;.*=;;' | tr '.' '-')

#ホームディレクトリとホームディレクトリ以外なのか

JAVA_VERSION=$1;shift;
MAVEN_VERSION=$1;shift;
GRADLE_VERSION=$1;shift;
GRAALVM_VERSION=$1;shift;
APACHE_SOLR_VERSION=$1;shift;
APACHE_SPARK_VERSION=$1;shift;
HADOOP_VERSION=$1;shift;
PYCHARM_VERSION=$1;shift;
SWIFT_VERSION=$1;shift;
JSONSCHEMA2POJO_VERSION=$1;shift;

DEFAULT_JAVA_VERSION=11
DEFAULT_MAVEN_VERSION=3-6-3
DEFAULT_GRADLE_VERSION=6-1
DEFAULT_GRAALVM_VERSION=20-1-0
DEFAULT_APACHE_SOLR_VERSION=8-5-1
DEFAULT_APACHE_SPARK_VERSION=3-0-0
DEFAULT_HADOOP_VERSION=3-2
DEFAULT_IDEA_VERSION=201-7846-76
DEFAULT_PYCHARM_VERSION=2020-1-2
DEFAULT_SWIFT_VERSION=5-2-4
DEFAULT_JSONSCHEMA2POJO_VERSION=1-0-2

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

if [ -z $PYCHARM_VERSION ];then
  :
else
  DEFAULT_PYCHARM_VERSION=$PYCHARM_VERSION
fi

if [ -z $JSONSCHEMA2POJO_VERSION ];then
  :
else
  DEFAULT_JSONSCHEMA2POJO_VERSION=$JSONSCHEMA2POJO_VERSION
fi

# 端末エミュレータごとのコマンド履歴を共有化
echo 'export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"' >>$HOME/.bashrc
echo 'shopt -u histappend' >>$HOME/.bashrc

#ドット記法に変換

OS_VERSION_DOT=$(echo $OS_VERSION | tr '-' '.')

DEFAULT_JAVA_VERSION_DOT=$(echo $DEFAULT_JAVA_VERSION|tr '-' '.' )
DEFAULT_MAVEN_VERSION_DOT=$(echo $DEFAULT_MAVEN_VERSION|tr '-' '.' )
DEFAULT_GRADLE_VERSION_DOT=$(echo $DEFAULT_GRADLE_VERSION|tr '-' '.' )
DEFAULT_GRAALVM_VERSION_DOT=$(echo $DEFAULT_GRAALVM_VERSION|tr '-' '.' )
DEFAULT_APACHE_SOLR_VERSION_DOT=$(echo $DEFAULT_APACHE_SOLR_VERSION|tr '-' '.' )
DEFAULT_APACHE_SPARK_VERSION_DOT=$(echo $DEFAULT_APACHE_SPARK_VERSION|tr '-' '.' )
DEFAULT_HADOOP_VERSION_DOT=$(echo $DEFAULT_HADOOP_VERSION|tr '-' '.' )
DEFAULT_IDEA_VERSION_DOT=$(echo $DEFAULT_IDEA_VERSION|tr '-' '.' )
DEFAULT_PYCHARM_VERSION_DOT=$(echo $DEFAULT_PYCHARM_VERSION|tr '-' '.' )
DEFAULT_SWIFT_VERSION_DOT=$(echo $DEFAULT_SWIFT_VERSION|tr '-' '.' )
DEFAULT_JSONSCHEMA2POJO_VERSION_DOT=$(echo $DEFAULT_JSONSCHEMA2POJO_VERSION|tr '-' '.' )

#使用するログインシェルの設定
echo 'export SHELL=$(which bash)' >>$HOME/.bashrc

#Xアプリ転送先設定
echo 'export DISPLAY=:0.0' >>$HOME/.bashrc

#アプリ側でデフォルトで使用するエディタの設定
echo 'export EDITOR=/usr/local/bin/vim' >>$HOME/.bashrc

#ロケール
echo 'export LANG=ja_JP.UTF-8' >>$HOME/.bashrc
#echo 'export LANGUAGE=ja_JP.UTF-8' >>$HOME/.bashrc
#echo 'export LC_ALL=ja_JP.UTF-8' >>$HOME/.bashrc

#IME (コンテナ上でibus安定したらそっちに変えたい)
#echo 'export GTK_IM_MODULE=ibus' >>$HOME/.bashrc
#echo 'export XMODIFIERS=@im=ibus' >>$HOME/.bashrc
#echo 'export QT_IM_MODULE=ibus' >>$HOME/.bashrc

#IME (コンテナホスト上でibus使用しているため、コンテナホストとコンテナゲストを棲み分けたい意味での設定)
echo 'export GTK_IM_MODULE=fcitx' >>$HOME/.bashrc
echo 'export XMODIFIERS=@im=fcitx' >>$HOME/.bashrc
echo 'export QT_IM_MODULE=fcitx' >>$HOME/.bashrc

#ヒストリの上限値設定
echo 'export HISTSIZE=1000000' >>$HOME/.bashrc #オンメモリ
echo 'export HISTFILESIZE=1000000' >>$HOME/.bashrc #.bash_historyファイル

#自作コマンドのパス
#そのうち作ったこともいつものようにわすれてる
echo 'export SCRIPT_CMD_HOME=$HOME/.local/script-cmd' >>$HOME/.bashrc
echo 'export PATH=$SCRIPT_CMD_HOME/bin:$PATH'>>$HOME/.bashrc

#自作検索系コマンドのパス
echo 'export SCRIPT_SEARCH_HOME=$HOME/.local/script-search' >>$HOME/.bashrc
echo 'export PATH=$SCRIPT_SEARCH_HOME/bin:$PATH'>>$HOME/.bashrc

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
#IOSないしアンドロイドなどのネイティブアプリ開発フルッター
echo 'export FLUTTER_HOME=/usr/local/src/flutter' >> $HOME/.bashrc
echo 'export PATH=$FLUTTER_HOME/bin:$PATH' >> $HOME/.bashrc
#クロスコンパイルできるラスト
echo 'export RUST_HOME=$HOME/.cargo' >>$HOME/.bashrc
echo 'export PATH=$RUST_HOME/bin:$PATH' >>$HOME/.bashrc
#IOSビルド
echo 'export OSXCROSS_HOME=/usr/local/src/osxcross/target' >>$HOME/.bashrc
echo 'export PATH=$OSXCROSS_HOME/bin:$PATH' >>$HOME/.bashrc
#Telegram
echo 'export TELEGRAM_HOME=/usr/local/src/Telegram' >>$HOME/.bashrc
echo 'export PATH=$TELEGRAM_HOME:$PATH' >>$HOME/.bashrc
#deno
echo 'export DENO_HOME=$HOME/.deno' >>$HOME/.bashrc
echo 'export PATH=$DENO_HOME/bin:$PATH'>>$HOME/.bashrc

#json2toml json2yamlなどいろいろ便利
#https://github.com/caltechlibrary/datatools
echo 'export DATATOOLS_HOME=/usr/local/src/datatools' >>$HOME/.bashrc
echo 'export PATH=$DATATOOLS_HOME/bin:$PATH' >>$HOME/.bashrc

#firebaseコマンドラインツール
echo 'export PATH=/usr/local/src/fuego-bin:$PATH' >>$HOME/.bashrc
echo 'export PATH=/usr/local/src/fsrpl-bin:$PATH' >>$HOME/.bashrc

#ディスク情報をエンリッチに確認できるコマンド
#https://github.com/muesli/duf
echo 'export PATH=/usr/local/src/duf-bin:$PATH' >>$HOME/.bashrc

#べんり
#jvm系言語でxmlbeanファイル作成時はマストアイテム
#https://javaee.github.io/jaxb-v2/
echo 'export JAXB_RI_HOME=/usr/local/src/jaxb-ri' >> $HOME/.bashrc
echo 'export PATH=$JAXB_RI_HOME/bin:$PATH' >> $HOME/.bashrc

#ちょーべんり
#jvm系言語でjsonbeanファイル作成時はマストアイテム
#https://github.com/joelittlejohn/jsonschema2pojo
echo "export JSONSCHEMA2POJO_HOME=/usr/local/src/jsonschema2pojo-$DEFAULT_JSONSCHEMA2POJO_VERSION_DOT" >>$HOME/.bashrc
echo 'export PATH=$JSONSCHEMA2POJO_HOME/bin:$PATH' >> $HOME/.bashrc

#Postman
echo 'export POSTMAN_HOME=/usr/local/src/Postman-Agent' >>$HOME/.bashrc
echo 'export PATH=$POSTMAN_HOME/app:$PATH' >>$HOME/.bashrc

#choosenimで入れたときのnimパス
echo 'export PATH=$HOME/.nimble/bin:$PATH' >>$HOME/.bashrc

#バージョン情報ないしオペレーティング情報に影響されるパスの設定
echo "export JAVA_HOME=/usr/local/src/jdk-$DEFAULT_JAVA_VERSION_DOT" >> $HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export MAVEN_HOME=/usr/local/src/apache-maven-$DEFAULT_MAVEN_VERSION_DOT">>$HOME/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bashrc
echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export APACHE_SOLR_HOME=/usr/local/src/solr-$DEFAULT_APACHE_SOLR_VERSION_DOT" >>$HOME/.bashrc
echo 'export PATH=$APACHE_SOLR_HOME/bin:$PATH' >>$HOME/.bashrc
echo "export GRADLE_HOME=/usr/local/src/gradle-$DEFAULT_GRADLE_VERSION_DOT">>$HOME/.bashrc
echo 'export PATH=$GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export APACHE_SPARK_HOME=/usr/local/src/spark-$DEFAULT_APACHE_SPARK_VERSION_DOT-preview2-bin-hadoop$DEFAULT_HADOOP_VERSION_DOT" >>$HOME/.bashrc
echo 'export PATH=$APACHE_SPARK_HOME/bin:$APACHE_SPARK_HOME/sbin:$PATH' >>$HOME/.bashrc
echo "export GRAALVM_HOME=/usr/local/src/graalvm-ce-java$DEFAULT_JAVA_VERSION_DOT-$DEFAULT_GRAALVM_VERSION_DOT" >>$HOME/.bashrc
echo 'export PATH=$GRAALVM_HOME/bin:$PATH' >>$HOME/.bashrc
echo "export SDKMAN_GRADLE_HOME=$HOME/.sdkman/candidates/gradle/$DEFAULT_GRADLE_VERSION_DOT">>$HOME/.bashrc
echo 'export PATH=$SDKMAN_GRADLE_HOME/bin:$PATH' >> $HOME/.bashrc
echo "export SWIFT_HOME=/usr/local/src/swift-$DEFAULT_SWIFT_VERSION_DOT-RELEASE-ubuntu$OS_VERSION_DOT/usr" >>$HOME/.bashrc
echo 'export PATH=$SWIFT_HOME/bin:$PATH' >>$HOME/.bashrc
echo 'export LD_LIBRARY_PATH=$SWIFT_HOME/lib/swift/linux:$LD_LIBRARY_PATH' >>$HOME/.bashrc
echo 'export WATERFOX_HOME=/usr/local/src/waterfox-classic' >>$HOME/.bashrc
echo 'export PATH=$WATERFOX_HOME:$PATH'  >>$HOME/.bashrc
echo 'export IRON_HOME=/usr/share/iron' >>$HOME/.bashrc
echo 'export PATH=$IRON_HOME:$PATH' >>$HOME/.bashrc

#git diff のGUIツールべんり
echo 'export P4MERGE_HOME=/usr/local/src/p4v-2020.1.1966006' >> $HOME/.bashrc
echo 'export PATH=$P4MERGE_HOME/bin:$PATH' >> $HOME/.bashrc

#nodejsでいいかと思ったがいれてみるとやっぱ便利
#/usr/local/src/RunJS/RunJS-1.12.2.AppImage 1>$HOME/launch-RunJS.log 2>&1 &
echo 'export RUNJS_HOME=/usr/local/src/RunJS' >> $HOME/.bashrc
echo 'export PATH=$RUNJS_HOME:$PATH' >> $HOME/.bashrc
#便利 https://responsively.app/
echo 'export RESPONSIVELYAPP_HOME=/usr/local/src/ResponsivelyApp' >> $HOME/.bashrc
echo 'export PATH=$RESPONSIVELYAPP_HOME/ResponsivelyApp-0.15.0.AppImage:$PATH' >> $HOME/.bashrc

#これを追加するとfirefoxがtor化する
echo 'export TOR_BROWSER_HOME=$HOME/tor-browser_en-US/Browser' >>$HOME/.bashrc
echo 'export PATH=$TOR_BROWSER_HOME:$PATH' >>$HOME/.bashrc

#cp $SWIFT_HOME/bin/sourcekit-lsp /usr/local/bin/sourcekit-lsp

echo 'export ANDROID_STUDIO_HOME=/usr/local/src/android-studio' >> $HOME/.bashrc
echo 'export PATH=$ANDROID_STUDIO_HOME/bin:$PATH' >> $HOME/.bashrc

#golangのIDE
echo 'export LITEIDE_HOME=/usr/local/src/liteide' >> $HOME/.bashrc
echo 'export PATH=$LITEIDE_HOME/bin:$PATH' >> $HOME/.bashrc

#優先度高いものほど下に追加
echo 'export PATH=/usr/local/bin:$PATH' >>$HOME/.bashrc
mkdir -p $HOME/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >>$HOME/.bashrc

#ダイナミックリンクパス バンドル系
echo 'export LD_LIBRARY_PATH=/usr/local/lib' >>$HOME/.bashrc

source $HOME/.bashrc
