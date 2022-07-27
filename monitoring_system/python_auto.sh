#!/bin/bash

set -ex

/usr/bin/python3 /home/ubuntu/monitoring_system/run.py > /home/ubuntu/monitoring_system/result.log 2>&1
