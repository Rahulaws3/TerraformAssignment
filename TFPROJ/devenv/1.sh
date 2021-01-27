#!/bin/bash
mkfs -t ext4 /dev/xvdf
mount /dev/xvdf /var/log
apt-get update
apt-get install apache2 -y