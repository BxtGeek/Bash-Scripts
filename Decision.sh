#!/bin/bash
#In this script will test if and else | This script is testing a number if it is greater then 100 or not 

echo "##################################"
echo "Script Started"
echo "##################################"
echo "Enter a Number:"
read SCRIPT_NUMBER
if [ $SCRIPT_NUMBER -gt 100 ]
then 
    echo "Your Your is greater than 100"
    exit
fi
    echo "Your Your is Less than 100"

#   Another Way using else
#   if [ $SCRIPT_NUMBER -gt 100 ]
#   then 
#       echo "Your Your is greater than 100"
#   else
#       echo "Your Your is Less than 100"
#   fi