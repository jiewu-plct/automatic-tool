#!/bin/bash

set -ex

sshport="10000"
useraccount="jiewu-plct"
containername="debian_${useraccount}"

docker run -dit -p ${sshport}:22 -v /root/docker_debian:/home/share/ --restart=always --name ${containername} kr1510/debian_ssh_riscv:v1.1