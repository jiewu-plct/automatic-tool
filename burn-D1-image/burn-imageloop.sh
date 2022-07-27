#!/bin/bash

set -ex

IMG="openEuler-D1-xfce-docker.img"
arr=($(seq 0 9 | tr '0-9' 'b-k'))

echo ${arr[*]}

for i in ${arr[*]}
do 
  echo ${i}
  TF="/dev/sd${i}"
  sudo dd if=${IMG} of=${TF} bs=1M iflag=fullblock oflag=direct conv=fsync status=progress
done