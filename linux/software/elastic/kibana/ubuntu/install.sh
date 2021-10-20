#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - KIBANA - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Install auditbeat"
apt-get update
apt-get install kibana -y


echo "### Enable filebeat in systemd"
systemctl enable kibana

echo "### Restart auditbeat service"
service filebeat kibana


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
