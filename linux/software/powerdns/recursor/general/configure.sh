#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POWERDNS - RECURSOR - UBUNTU - Install"
echo "########################################################################"
echo "#                                                                      #"

template_path=$1
ipaddress=$2

cp $template_path/linux/software/powerdns/recursor/templates/recursor.conf /etc/powerdns/.
sed -i "s/local-address=0.0.0.0/local-address=$ipaddress/" /etc/powerdns/recursor.conf

echo "#                                                                      #"
echo "########################################################################"
echo " "