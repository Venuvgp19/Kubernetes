#!/bin/bash

state=`systemctl status docker |grep -i running|wc -l`
echo $state
if [ $state == 0 ]; then
    yum install docker -y
fi
systemctl restart docker.service

