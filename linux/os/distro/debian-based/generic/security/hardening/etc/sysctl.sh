#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - SYSCTL"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Remove old /etc/sysctl.conf"
rm -f /etc/sysctl.conf

echo "### Configuring new /etc/sysctl.conf"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/sysctl.conf /etc/sysctl.conf
chown root:root /etc/sysctl.conf
chmod 644 /etc/sysctl.conf
sysctl -p


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

