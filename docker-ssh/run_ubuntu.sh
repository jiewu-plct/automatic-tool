#!/bin/bash

set -ex

sshport="20000"
useraccount="jiewu-plct"
containername="ubuntu_${useraccount}"

docker run -dit -p ${sshport}:22 -v /root/docker_ubuntu:/home/share/ --restart=always --name ${containername} kr1510/ubuntu_ssh_riscv:v1.1
