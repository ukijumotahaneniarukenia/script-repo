#!/usr/bin/env bash

groupadd -g 1001 haskell && \
useradd -m -g haskell -u 1001 haskell && \
chsh -s /bin/bash haskell && \
echo 'haskell_pwd' | passwd --stdin haskell && \
echo 'haskell ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'root_pwd' | passwd --stdin root
