#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - HARDENING - ISSUE"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Remove old issue"
rm -f /etc/issue
rm -f /etc/issue.net

echo "### Configuring new issue"
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"
cp $SCRIPT_PATH/templates/issue /etc/issue
ln -s /etc/issue /etc/issue.net
chmod 644 /etc/issue*


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

