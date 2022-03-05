#!/bin/bash
#Here I am testing and learning about elif | Here I am checking the system active interfaces

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)
if [ $value -eq 1 ]
then
    echo "1 Active Interface"
elif [ $value -gt 1 ]
then
    echo "Multiple Active Interface"
else 
    echo "No Active Interface"
fi