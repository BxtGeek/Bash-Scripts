#!/bin/bash

# Simple script to add user

MYUSER = "Alpha Beta Gamma Lamda"

for usr in $MYUSER
do 
    echo "##################################"
    echo "Adding user $usr."
    echo "##################################"
    useradd $usr
    if $usr
done