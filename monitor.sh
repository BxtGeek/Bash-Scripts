#!/bin/bash
# Learn about the $? dollar question mark)  is used to find the return value of the last executed command.

cat /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
    echo "Httpd is running"
else
    echo "Httpd is not running"
    echo "Starting the Httpd Process"
    if [ $? -eq 0 ]
    then
        echo "Httpd process start sucessfully"
    else
        echo "Httpd process starting failed"
    fi
fi