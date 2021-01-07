#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - ISSUE"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Configuring issue"
rm -f /etc/issue
rm -f /etc/issue.net
mv templates/issue /etc/issue
ln -s /etc/issue /etc/issue.net
chmod 644 /etc/issue*


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

