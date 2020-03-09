#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://download3.rstudio.org/centos6.3/x86_64/shiny-server-1.5.9.923-x86_64.rpm && \
yum install -y shiny-server-1.5.9.923-x86_64.rpm

R -e 'install.packages("rmarkdown",repos="http://cran.ism.ac.jp/" ,dependencies = TRUE, Ncpus = getOption("Ncpus", 12L))'
R -e 'install.packages("shiny",repos="http://cran.ism.ac.jp/" ,dependencies = TRUE, Ncpus = getOption("Ncpus", 12L))'
