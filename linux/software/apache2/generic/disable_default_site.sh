#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - APACHE2 - GENERIC - Disable default websites"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


a2dissite 000-default
a2dissite default-ssl
systemctl reload apache2


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
