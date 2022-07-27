#!/bin/bash

set -ex

portkey=$1
portvalue=$2
userkey=$3
uservalue=$4
oskey=$5
osvalue=$6

etcdctl put ${portkey} ${portvalue}
etcdctl get ${portkey}
etcdctl put ${userkey} ${uservalue}
etcdctl get ${userkey}
etcdctl put ${oskey} ${osvalue}
etcdctl get ${oskey}