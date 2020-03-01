#!/usr/bin/env bash

groupadd -g 1001 rstudio && \
useradd -m -g rstudio -u 1001 rstudio && \
chsh -s /bin/bash rstudio && \
echo '0 root 0 root root_pwd' | passwd --stdin rstudio && \
echo 'rstudio ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
