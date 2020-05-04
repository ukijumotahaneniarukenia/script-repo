#!/usr/bin/env bash

groupadd -g 1001 rstudio && \
useradd -m -g rstudio -u 1001 rstudio && \
chsh -s /bin/bash rstudio && \
echo 'rstudio_pwd' | passwd --stdin rstudio && \
echo 'rstudio ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
