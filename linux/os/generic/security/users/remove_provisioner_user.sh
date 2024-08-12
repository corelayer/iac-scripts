#!/bin/bash
user
echo "### remove provisioner user from system on next reboot"
echo "@reboot /usr/sbin/deluser $user --remove-home && crontab -u root -r && passwd -l root" | crontab -u root -
