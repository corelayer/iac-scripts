#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHP - UBUNTU - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


apt-get update 
apt-get -y install php php-{mysql,curl,gd,intl,pear,imap,memcache,pspell,tidy,xmlrpc,mbstring,gmp,json,xml}

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
