#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - UBUNTU - SECURITY - SSH config"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Configuring sshd_config"
rm -f /etc/ssh/sshd_config
cp templates/sshd_config.conf /etc/ssh/sshd_config
chown root:root /etc/ssh/sshd_config
chmod 644 /etc/ssh/sshd_config


sed -i '/^session    optional     pam_motd.so/s//#&/' /etc/pam.d/sshd


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

