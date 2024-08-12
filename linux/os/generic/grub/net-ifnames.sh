#!/bin/bash
echo "### update grub to use legacy network interface names"
sed -ie 's/GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/' /etc/default/grub
update-grub
