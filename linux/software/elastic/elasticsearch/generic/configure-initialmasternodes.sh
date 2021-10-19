#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Cluster Initial Master Nodes"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


filepath=$1
master_nodes=$2

sed -i "s~#cluster.initial_master_nodes: [\"node-1\", \"node-2\"]~cluster.initial_master_nodes: $master_nodes~" $filepath

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "