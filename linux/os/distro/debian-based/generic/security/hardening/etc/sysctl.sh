#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - SYSCTL"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Configuring /etc/sysctl.conf"
rm -f /etc/sysctl.conf
cp /tmp/automation/os/linux/files/general/etc/sysctl.conf /etc/sysctl.conf
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

