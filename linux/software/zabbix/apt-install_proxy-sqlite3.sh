#!/bin/sh
echo "### install zabbix-proxy"
DEBIAN_FRONTEND="noninteractive" apt-get install -y zabbix-proxy-sqlite3
