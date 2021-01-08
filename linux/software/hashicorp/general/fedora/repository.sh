#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - HASHICORP - GENERAL - REPOSITORY Fedora"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


dnf install -y dnf-plugins-core
dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "