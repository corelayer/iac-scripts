#!/bin/bash
user=$1

echo "### Remove provisioner user from system"
echo "@reboot /usr/sbin/deluser $user --remove-home && crontab -u root -r && passwd -l root" | crontab -u root -
