#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO http://ftp.jaist.ac.jp/pub/apache/lucene/solr/8.4.1/solr-8.4.1.tgz && \
tar xvf solr-8.4.1.tgz && \
chown -R solr:solr solr-8.4.1
