#!/bin/bash
user=$1
echo "### clean crontab for user $user"
crontab -u $user -r
