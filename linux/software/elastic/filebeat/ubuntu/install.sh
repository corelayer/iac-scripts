#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - FILEBEAT - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Install auditbeat"
apt-get update
apt-get install filebeat -y


echo "### Enable filebeat in systemd"
systemctl enable filebeat


echo "### Move configuration file to /etc"
cp ../templates/filebeat.yml /etc/filebeat.yml


echo "### Restart auditbeat service"
service filebeat restart


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
