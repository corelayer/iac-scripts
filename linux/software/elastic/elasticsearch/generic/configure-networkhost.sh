#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Network Host"
echo "########################################################################"
echo "#                                                                      #"

filepath=$1
address=$2

sed -i "s~#network.host: 192.168.0.1~network.host: $address~" $filepath

echo "#                                                                      #"
echo "########################################################################"
echo " "