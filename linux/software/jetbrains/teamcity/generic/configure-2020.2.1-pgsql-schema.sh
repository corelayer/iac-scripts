#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Configure Database"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

database_user=$1
database_password=$2
database_schema=$3

su - postgres psql -c "CREATE ROLE $database_user LOGIN PASSWORD '$database_password' NOINHERIT CREATEDB;"
su - postgres psql -c "CREATE SCHEMA IF NOT EXISTS $database_schema AUTHORIZATION $database_user;"

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

