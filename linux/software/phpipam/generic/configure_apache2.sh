#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure Apache2"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


servername=$1
serveralias=$2
serveradmin=$3

cp ../templates/etc/apache2/sites-available/phpipam.conf /etc/apache2/sites-available/.

sed -ie "s/<servername>/$servername/" /etc/apache2/sites-available/phpipam.conf
sed -ie "s/<serveralias>/$serveralias/" /etc/apache2/sites-available/phpipam.conf
sed -ie "s/<serveradmin>/$serveradmin/" /etc/apache2/sites-available/phpipam.conf

a2ensite phpipam.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
