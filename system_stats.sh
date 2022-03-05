#!/bin/bash

#This script will show the IP | System Load | Ram | Uptime

LOAD=`df -h | grep /dev/sda1 | awk '{print $5}'`
FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
CURRENT_IP=`hostname -I | awk '{print $2}'`
CURRENT_UP_TIME=`uptime | awk '{print $3}'`

echo "#################################################"
echo "WELCOME TO $HOSTNAME"
echo "#################################################"
echo "System IP is $CURRENT_IP"
echo "System uptime is $CURRENT_UP_TIME Min"
echo "System Free RAM is $FREE_RAM MB"
echo "System Current Load is $LOAD%"
echo "#################################################"
echo "BYE BYE!"
echo "#################################################"