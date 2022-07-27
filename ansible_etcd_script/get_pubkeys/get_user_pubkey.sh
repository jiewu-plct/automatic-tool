#!/bin/bash

set -ex


githubID=$(etcdctl get $1 --print-value-only)
os=$(etcdctl get $2 --print-value-only)
containername="${os}_${githubID}"
echo ${githubID}
echo ${os}
echo ${containername}


if [ ! -d "${githubID}_pubkey" ]; then
  mkdir ${githubID}_pubkey
fi


curl https://github.com/${githubID}.keys > ./${githubID}_pubkey/id_rsa.pub

docker cp ./${githubID}_pubkey/id_rsa.pub ${containername}:/home/tester/.ssh/id_rsa.pub