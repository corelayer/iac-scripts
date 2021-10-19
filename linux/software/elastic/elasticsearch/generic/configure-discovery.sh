#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - GENERIC - Discovery Seed Hosts"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


filepath=$1
seed_hosts=$2

sed -i "s~#discovery.seed_hosts: [\"host1\", \"host2\"]~discovery.seed_hosts: $seed_hosts~" $filepath

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "