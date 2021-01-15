#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure Apache2"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

template_directory=$1
servername=$2
serveralias=$3
serveradmin=$4

cp $template_directory/linux/software/phpipam/templates/etc/apache2/sites-available/phpipam.conf /etc/apache2/sites-available/.

sed -i "s/<servername>/$servername/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveralias>/$serveralias/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveradmin>/$serveradmin/" /etc/apache2/sites-available/phpipam.conf

a2ensite phpipam.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
