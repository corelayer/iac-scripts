#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POWERDNS - RECURSOR - UBUNTU - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

ipaddress=$1
cp ./linux/software/powerdns/recursor/templates/recursor.conf /etc/powerdns/.
sed -i "s/local-address=0.0.0.0/local-address=$ipaddress/" /etc/powerdns/recursor.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "