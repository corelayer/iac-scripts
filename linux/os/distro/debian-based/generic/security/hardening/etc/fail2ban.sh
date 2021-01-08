#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - FAIL2BAN"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Configuring jails"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/fail2ban/jail.conf /etc/fail2ban/jail.local


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

