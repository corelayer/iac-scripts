#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - SECURITY remove user"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

user = $1
echo "### Remove user $user"
deluser $user --remove-home

echo "### Remove stager from sudoers.d"
FILE=/etc/sudoers.d/$user
if test -f "$FILE"; then
  rm $FILE
fi


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

