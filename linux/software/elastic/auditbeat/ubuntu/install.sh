#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - AUDITBEAT - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Install auditbeat"
apt-get update
apt-get install auditbeat -y


echo "### Enable auditbeat in systemd"
systemctl enable auditbeat


echo "### Move configuration file to /etc"
cp ../templates/auditbeat.yml /etc/auditbeat.yml


echo "### Restart auditbeat service"
service auditbeat restart


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
