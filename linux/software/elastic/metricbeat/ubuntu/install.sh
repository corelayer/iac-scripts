#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - METRICBEAT - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Install metricbeat"
apt-get update
apt-get install metricbeat -y


echo "### Enable metricbeat in systemd"
systemctl enable metricbeat

echo "### Restart auditbeat service"
service metricbeat restart


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
