#!/bin/bash

# In this script I am learning while loop 
# I am increasing a value of a counter using for loop 

counter=0

while [ $counter -lt 5 ]
do
    echo "looping"
    echo "Value of counter is $counter."
    counter=$(( $counter+1 ))
    sleep 1
done

echo "out of loop"