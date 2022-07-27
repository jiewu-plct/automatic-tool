#!/bin/bash

set -ex

IMG="openEuler-D1-xfce-docker.img"
TF="/dev/sdb"

sudo dd if=${IMG} of=${TF} bs=1M iflag=fullblock oflag=direct conv=fsync status=progress
