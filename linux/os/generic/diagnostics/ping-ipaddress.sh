#!/bin/bash
ipaddress=$1
echo "### ping $ipaddress"
ping -c 10 $ipaddress
echo "### --> DONE <--"
