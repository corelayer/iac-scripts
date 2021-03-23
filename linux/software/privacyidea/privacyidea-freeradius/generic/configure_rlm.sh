#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PRIVACYIDEA - GENERIC - Configure rlm.ini"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

fqdn=$1
check_ssl=$2

cp $template_basepath/linux/software/privacyidea/privacyidea-freeradius/templates/etc/privacyidea/rlm.ini /etc/privacyidea/.
sed -i "s~fqdn~$fqdn~" /etc/privacyidea/rlm_perl.ini
sed -i "s~check_ssl~$check_ssl~" /etc/privacyidea/rlm_perl.ini


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
