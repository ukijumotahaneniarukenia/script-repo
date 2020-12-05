#!/usr/bin/env bash

#https://app.getpostman.com/join-team?invite_code=4bf77e50a836921d28bb67c654876fc9

cp /home/aine/Downloads/software/Postman\ Agent-linux-x64-0.2.4.tar.gz /usr/local/src/

cd /usr/local/src

tar xvf 'Postman Agent-linux-x64-0.2.4.tar.gz'

mv '/usr/local/src/Postman Agent' /usr/local/src/Postman-Agent

mv '/usr/local/src/Postman-Agent/app/Postman Agent' /usr/local/src/Postman-Agent/app/Postman-Agent
