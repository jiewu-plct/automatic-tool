#!/bin/bash

set -ex

IMG="openEuler-D1-xfce-docker.img"
arr=($(seq 0 9 | tr '0-9' 'b-k'))

echo ${arr[*]}

for i in ${arr[*]}
do 
  echo ${i}
  TF="/dev/sd${i}"
  DISK="${TF}4"
  
  sudo fdisk ${TF}
  sudo resize2fs ${DISK}
  sudo fdisk -l
done
