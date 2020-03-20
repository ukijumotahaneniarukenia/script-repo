#!/usr/bin/env bash

echo -e "\n## For R package"  | tee -a /etc/apt/sources.list
echo "deb https://cran.rstudio.com/bin/linux/ubuntu $(lsb_release -cs)-cran35/" | tee -a /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
apt update
apt install -y r-base
