#!/usr/bin/env bash
cd /usr/local/src && \
curl -LO https://mirror.racket-lang.org/installers/7.5/racket-7.5-x86_64-linux.sh && \
chmod +x racket-7.5-x86_64-linux.sh && \
echo 2 | ./racket-7.5-x86_64-linux.sh --unix-style
