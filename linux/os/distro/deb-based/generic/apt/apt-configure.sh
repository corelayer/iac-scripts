#!/bin/bash
echo "### configure apt"
echo "### --> install apt-transport-https"
apt-get install -y apt-transport-https
echo "### --> install apt-utils"
apt-get install -y apt-utils
echo "### --> DONE <--"
