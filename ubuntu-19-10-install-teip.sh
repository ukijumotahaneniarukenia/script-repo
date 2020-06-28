#!/usr/bin/env bash

curl -sfSL --retry 5 https://git.io/teip-1.2.0.x86_64.deb -o teip.deb

dpkg -i teip.deb


#$ teip
#teip: Invalid arguments.
#
#Usage:
#  teip -g <pattern> [-oGsvz] [--] [<command>...]
#  teip -f <list> [-d <delimiter> | -D <pattern>] [-svz] [--] [<command>...]
#  teip -c <list> [-svz] [--] [<command>...]
#  teip -l <list> [-svz] [--] [<command>...]
#  teip --help | --version
