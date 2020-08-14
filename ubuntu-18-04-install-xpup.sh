#!/usr/bin/env bash

#$ env | grep GO
GOPATH=/home/aine/.local/go-repo

go get github.com/ericchiang/xpup

which xpup
