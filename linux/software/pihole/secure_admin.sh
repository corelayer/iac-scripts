#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Secure Admin panel"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


webpassword=$1
pihole -a -p $webpassword


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "