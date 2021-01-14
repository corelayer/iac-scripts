#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - APACHE2 - UBUNTU - Configure PHP"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


apt-get -y install libapache2-mod-php
systemctl restart apache2

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "