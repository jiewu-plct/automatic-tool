#!/bin/bash

set -ex


githubID=$1
os=$2
containername="${os}_${githubID}"


if [ ! -d "${githubID}_pubkey" ]; then
  mkdir ${githubID}_pubkey
fi


curl https://github.com/${githubID}.keys > ./${githubID}_pubkey/id_rsa.pub

docker cp ./${githubID}_pubkey/id_rsa.pub ${containername}:/home/tester/.ssh/id_rsa.pub