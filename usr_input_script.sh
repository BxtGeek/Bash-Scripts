#!/bin/bash

#using this script will test how user input works in variables

echo "Enter your skills:"
read SKILLS 

echo "your $SKILLS skill is in high demand in the IT industry."

read -p 'Username:' USR 
read -sp 'Password:' PASS 

echo

echo "Login Sucessfull : Welcome to $USR"