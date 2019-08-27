#!/bin/bash 

#define variable 
# No space between variable name equation symobl 
hello="hello world"

#use variable 
echo $hello


#some test case 
for file in `ls /etc`; do
    echo $file
done

#{} can bse use to explicitly show the boundar of variable 
for skill in Ada Coffee Action Jave; do 
    echo "I am good at ${skill}Script"
done 
