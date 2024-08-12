#!/bin/bash
echo "### install apache2"
apt-get -y install apache2
systemctl restart apache2