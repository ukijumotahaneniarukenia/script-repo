#!/usr/bin/env bash
groupadd -g 1001 rstudio && \
useradd -m -g rstudio -u 1001 rstudio && \
chsh -s /bin/bash rstudio && \
echo 'rstudio_pwd' | passwd --stdin rstudio && \
echo 'rstudio ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

groupadd -g 1002 shiny && \
useradd -m -g shiny -u 1002 shiny && \
chsh -s /bin/bash shiny && \
echo 'shiny_pwd' | passwd --stdin shiny && \
echo 'shiny ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

echo 'root_pwd' | passwd --stdin root
