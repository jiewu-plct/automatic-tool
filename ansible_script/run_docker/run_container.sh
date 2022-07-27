#!/bin/bash

set -ex

sshport=$1
useraccount=$2
os=$3
containername="${os}_${useraccount}"

docker run -dit -p ${sshport}:22 -v /root/docker_ubuntu:/home/share/ --restart=always --name ${containername} kr1510/${os}_ssh_riscv:v1.1

