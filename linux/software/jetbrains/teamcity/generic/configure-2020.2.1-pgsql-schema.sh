#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Configure Database"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

database_user=$1
database_password=$2
database_schema=$3

su -c psql "CREATE ROLE $database_user LOGIN PASSWORD '$database_password' NOINHERIT CREATEDB;" postgres 
su -c psql "CREATE SCHEMA IF NOT EXISTS $database_schema AUTHORIZATION $database_user;" postgres 

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

