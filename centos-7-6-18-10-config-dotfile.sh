#!/usr/bin/env bash
cd $HOME && git clone https://github.com/ukijumotahaneniarukenia/dotfile.git
find $HOME/dotfile -type f -name "*" | grep -vP '\.git|README.md' | perl -pe 's;.*/;;g' | xargs -I@ echo "mv $HOME/dotfile/@ $HOME/@" | sh
