#!/bin/bash
echo "### install libapache2-mod-php"
apt-get -y install libapache2-mod-php
systemctl restart apache2