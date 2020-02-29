#!/usr/bin/env bash
groupadd -g 1001 rstudio
useradd -m -g rstudio -u 1001 rstudio
chsh -s /bin/bash rstudio
chsh -s /bin/bash oracle
echo 'root_pwd' | passwd --stdin root
