#!/bin/bash
echo "########################################################################"
echo "UBUNTU TEMPLATE FROM MINIMAL INSTALLATION"
echo "########################################################################"
echo "### Update system"
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-update.sh
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-upgrade.sh
echo "------------------------------------------------------------------------"

echo "### Configure package sources"
echo "------------------------------------------------------------------------"

echo "### Install additional packages"
sh /tmp/iac-scripts/linux/software/apparmor/apt-install_apparmor-profiles.sh
sh /tmp/iac-scripts/linux/software/apparmor/apt-install_apparmor-utils.sh
sh /tmp/iac-scripts/linux/software/cronie/apt-install.sh
sh /tmp/iac-scripts/linux/software/fail2ban/apt-install.sh
sh /tmp/iac-scripts/linux/software/gnupg2/apt-install.sh
sh /tmp/iac-scripts/linux/software/htop/apt-install.sh
sh /tmp/iac-scripts/linux/software/itop/apt-install.sh
sh /tmp/iac-scripts/linux/software/net-tools/apt-install.sh
sh /tmp/iac-scripts/linux/software/screen/apt-install.sh
sh /tmp/iac-scripts/linux/software/traceroute/apt-install.sh
echo "------------------------------------------------------------------------"

echo "### Execute template base configuration scripts"
sh /tmp/iac-scripts/linux/os/generic/grub/net-ifnames.sh
echo "------------------------------------------------------------------------"

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
sh /tmp/iac-scripts/linux/os/generic/security/hardening/ssh/sshd_config.sh
echo "------------------------------------------------------------------------"

echo "### Template cleanup"
sh /tmp/iac-scripts/linux/os/generic/crontab/cleanup-user.sh root
sh /tmp/iac-scripts/linux/os/generic/crontab/cleanup-user.sh $PROVISIONER_USERNAME
sh /tmp/iac-scripts/linux/os/generic/cloud-init/cleanup.sh
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-autoremove.sh
sh /tmp/iac-scripts/linux/os/distro/deb-based/generic/apt/apt-autoclean.sh
echo "------------------------------------------------------------------------"

echo "### Remove Provisioner User"
sh /tmp/iac-scripts/linux/os/generic/security/users/remove_provisioner_user.sh $PROVISIONER_USERNAME
echo "------------------------------------------------------------------------"

echo "########################################################################"
echo " "