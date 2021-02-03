#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PI-HOLE - Install Whitelist entries"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


pihole -w "sp.nba.com"
pihole -w "go.sdworx.com"
pihole -w "go.fortinet.com"
pihole -w "support.iam.ad.azure.com"
pihole -w "main.iam.ad.ext.azure.com"


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "