#!/bin/bash
echo "### run apt-get dist-upgrade"
apt-get update
apt-get dist-upgrade -y -q
