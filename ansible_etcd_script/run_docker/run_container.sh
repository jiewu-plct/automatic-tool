#!/bin/bash

set -ex


sshport=$(etcdctl get $1 --print-value-only)
useraccount=$(etcdctl get $2 --print-value-only)
os=$(etcdctl get $3 --print-value-only)
echo ${sshport}
echo ${useraccount}
echo ${os}

containername="${os}_${useraccount}"

docker run -dit -p ${sshport}:22 -v /root/docker_ubuntu:/home/share/ --restart=always --name ${containername} kr1510/${os}_ssh_riscv:v1.1