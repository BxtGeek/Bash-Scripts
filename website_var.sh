#!/bin/bash

# Define Variables
PACKAGE="wget unzip httpd"
SVC="httpd"
URL="https://templatemo.com/tm-zip-files-2020/templatemo_522_venue.zip"
ART_NAME="templatemo_522_venue"

# Installing Package
echo "###################################"
echo "Installing Package"
echo "###################################"
sudo yum install $PACKAGE -y > /dev/null
echo

# Initilizaing the httpd service
echo "###################################"
echo "Initilizaing the httpd service"
echo "###################################"
systemctl enable $SVC
systemctl start $SVC
echo

# Deploying project
echo "###################################"
echo "Deploying project"
echo "###################################"
cd /tmp
mkdir webfiles
cd webfiles
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
cd $ART_NAME
cp -r * /var/www/html/
echo

# Restarting Service
echo "###################################"
echo "Restarting Service"
echo "###################################"
systemctl restart $SVC
echo

# Deleting Files 
echo "###################################"
echo "Deleting Temp Files"
echo "###################################"
cd /tmp
rm -rf webfiles
echo
echo "###################################"
echo "Acess you Deployment at Public IP"
echo "###################################"