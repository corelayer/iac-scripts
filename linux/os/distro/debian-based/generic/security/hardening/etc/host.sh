#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - HOST"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Configuring /etc/host.conf"
rm -f /etc/host.conf
cp templates/host.conf /etc/host.conf
chown root:root /etc/host.conf
chmod 644 /etc/host.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

