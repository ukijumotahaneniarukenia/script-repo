#!/usr/bin/env bash
rm -rf $HOME/dotfile
cd $HOME && git clone https://github.com/ukijumotahaneniarukenia/dotfile.git
find $HOME/dotfile -type f -name "*" | grep -vP '.git/|README.md' | perl -pe 's;.*/;;g' | xargs -I@ echo "cp $HOME/dotfile/@ $HOME/@" | sh
