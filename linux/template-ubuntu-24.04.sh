#!/bin/bash
echo "########################################################################"
echo "PACKER - LINUX - COREBOX BUILD PROVISIONER"
echo "########################################################################"

echo "### Install additional packages"

echo "### Execute template base configuration scripts"
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-dist-upgrade.sh
sh /tmp/iac-scripts/linux/os/generic/grub/net-ifnames.sh

echo "### Execute template hardening scripts"
sh /tmp/iac-scripts/linux/os/generic/security/hardening/apparmor/enforce-ping.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/apparmor/enforce-traceroute.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/fail2ban.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/fstab.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/host.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/irqbalance.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/issue.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/modprobe.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/motd.sh
sh /tmp/iac-scripts/linux/os/generic/security/hardening/etc/sysctl.sh

echo "### Configure SSH Server"
sh /tmp/iac-scripts/linux/os/generic/security/hardening/ssh/sshd_config.sh

echo "### Template cleanup"
sh /tmp/iac-scripts/linux/os/generic/crontab/cleanup-user.sh root
sh /tmp/iac-scripts/linux/os/generic/crontab/cleanup-user.sh $PROVISIONER_USERNAME
sh /tmp/iac-scripts/linux/os/generic/cloud-init/cleanup.sh
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-autoremove.sh
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-autoclean.sh

echo "### Remove Provisioner User"
sh /tmp/iac-scripts/linux/os/generic/security/users/remove_provisioner_user.sh $PROVISIONER_USERNAME

echo "########################################################################"
echo " "