#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Node Name"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


filepath=$1
nodename=$2

sed -i "s~#node.name: node-1~node.name: $nodename~" $filepath

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "