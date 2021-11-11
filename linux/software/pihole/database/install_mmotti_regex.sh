#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install mmotti pihole-regex"
echo "########################################################################"
echo "#                                                                      #"

apt-get install -y python3
curl -sSl https://raw.githubusercontent.com/mmotti/pihole-regex/master/install.py | python3

echo "#                                                                      #"
echo "########################################################################"
echo " "