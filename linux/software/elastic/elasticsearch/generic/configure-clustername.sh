#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Cluster Name"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


filepath=$1
clustername=$2

sed -i "s~#cluster.name: my-application~cluster.name: $clustername~" $filepath

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "