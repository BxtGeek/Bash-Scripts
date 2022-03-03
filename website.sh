#!/bin/bash
sudo yum install wget unzip httpd -y
systemctl enable httpd
systemctl start httpd
cd /tmp/
wget https://templatemo.com/tm-zip-files-2020/templatemo_522_venue.zip
unzip templatemo_522_venue.zip
cd templatemo_522_venue
cp -r * /var/www/html/
ls /var/www/html/
systemctl restart httpd
cd /tmp
rm -rf templatemo_522_venue templatemo_522_venue.zip