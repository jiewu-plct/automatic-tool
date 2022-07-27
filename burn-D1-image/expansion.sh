#!/bin/bash

set -ex

IMG="openEuler-D1-xfce-docker.img"
TF="/dev/sdb"
DISK="${TF}4"

sudo fdisk ${TF}
sudo resize2fs ${DISK}
sudo fdisk -l