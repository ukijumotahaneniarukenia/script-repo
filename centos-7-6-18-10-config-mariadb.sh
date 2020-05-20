#!/usr/bin/env bash

grep -n '\[mariadb\]' /etc/my.cnf.d/server.cnf | while read n;do echo sed -i "'${n/:*/}acharacter-set-server=utf8'" /etc/my.cnf.d/server.cnf;done | bash
