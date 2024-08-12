#!/bin/bash
SCRIPT_PATH="$( cd $(dirname $0) && pwd)"

echo "########################################################################"
echo "UBUNTU TEMPLATE FROM MINIMAL INSTALLATION"
echo "########################################################################"
echo "### Update system"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/os/distro/deb-based/generic/apt/apt-update.sh
sh $SCRIPT_PATH/linux/os/distro/deb-based/generic/apt/apt-configure.sh
sh $SCRIPT_PATH/linux/os/distro/deb-based/generic/apt/apt-upgrade.sh
echo "########################################################################"

echo "### Configure package sources"
echo "------------------------------------------------------------------------"
echo "########################################################################"

echo "### Install additional packages"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/software/apparmor/apt-install_apparmor-profiles.sh
sh $SCRIPT_PATH/linux/software/apparmor/apt-install_apparmor-utils.sh
sh $SCRIPT_PATH/linux/software/bash/apt-install_bash-completion.sh
sh $SCRIPT_PATH/linux/software/ca-certificates/apt-install.sh
sh $SCRIPT_PATH/linux/software/cloud-init/apt-install.sh
sh $SCRIPT_PATH/linux/software/cron/apt-install.sh
sh $SCRIPT_PATH/linux/software/curl/apt-install.sh
sh $SCRIPT_PATH/linux/software/fail2ban/apt-install.sh
sh $SCRIPT_PATH/linux/software/gnupg2/apt-install.sh
sh $SCRIPT_PATH/linux/software/htop/apt-install.sh
sh $SCRIPT_PATH/linux/software/inetutils/apt-install_inetutils-ping.sh
sh $SCRIPT_PATH/linux/software/inetutils/apt-install_inetutils-traceroute.sh
sh $SCRIPT_PATH/linux/software/itop/apt-install.sh
sh $SCRIPT_PATH/linux/software/net-tools/apt-install.sh
sh $SCRIPT_PATH/linux/software/screen/apt-install.sh
echo "########################################################################"

echo "### Execute template base configuration scripts"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/os/generic/grub/net-ifnames.sh
echo "########################################################################"

echo "### Execute template hardening scripts"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/os/generic/security/hardening/apparmor/enforce-ping.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/fail2ban.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/fstab.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/host.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/irqbalance.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/issue.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/modprobe.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/motd.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/etc/sysctl.sh
sh $SCRIPT_PATH/linux/os/generic/security/hardening/ssh/sshd_config.sh
echo "########################################################################"

echo "### Template cleanup"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/os/generic/crontab/cleanup-user.sh root
sh $SCRIPT_PATH/linux/os/generic/crontab/cleanup-user.sh $PROVISIONER_USERNAME
sh $SCRIPT_PATH/linux/os/generic/cloud-init/cleanup.sh
sh $SCRIPT_PATH/linux/os/distro/deb-based/generic/apt/apt-autoremove.sh
sh $SCRIPT_PATH/linux/os/distro/deb-based/generic/apt/apt-autoclean.sh
echo "########################################################################"

echo "### Remove Provisioner User"
echo "------------------------------------------------------------------------"
sh $SCRIPT_PATH/linux/os/generic/security/users/remove_provisioner_user.sh $PROVISIONER_USERNAME

echo "########################################################################"
echo " "