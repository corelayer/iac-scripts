#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - APT-CACHER-NG - UBUNTU - Configure"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "PassThroughPattern: .*" | sudo tee -a /etc/apt-cacher-ng/acng.conf
echo "VerboseLog: 2" | sudo tee -a /etc/apt-cacher-ng/acng.conf
echo "Debug: 5" | sudo tee -a /etc/apt-cacher-ng/acng.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "