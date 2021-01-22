#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Configure"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


ipv4_listen=$1
upstream_dns1=$2
upstream_dns2=$3
webpassword=$4

cp -r templates/* /etc/pihole/.

sed -i "s/IPV4_ADDRESS=0.0.0.0/IPV4_ADDRESS=$ipv4_listen/" /etc/pihole/setupVars.conf
sed -i "s/PIHOLE_DNS_1=0.0.0.0/PIHOLE_DNS_1=$upstream_dns1/" /etc/pihole/setupVars.conf
sed -i "s/PIHOLE_DNS_2=0.0.0.0/PIHOLE_DNS_2=$upstream_dns1/" /etc/pihole/setupVars.conf
sed -i "s/WEBPASSWORD=000000000000000000000000/WEBPASSWORD=$webpassword/" /etc/pihole/setupVars.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "