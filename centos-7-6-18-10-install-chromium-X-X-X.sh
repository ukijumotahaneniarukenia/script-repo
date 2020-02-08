#!/usr/bin/env bash
#Chromiumブラウザコマンド
cd /usr/local/src && \
git clone https://github.com/scheib/chromium-latest-linux.git && \
cd chromium-latest-linux && ./update-and-run.sh

#ChromeDriverコマンド
cd /usr/local/src && \
curl -LO https://chromedriver.storage.googleapis.com/80.0.3987.16/chromedriver_linux64.zip && \
unzip chromedriver_linux64.zip && \
mv chromedriver /usr/local/bin && \
chmod 755 /usr/local/bin/chromedriver
