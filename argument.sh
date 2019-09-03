#!/bin/bash 

echo "Comman line argument"
echo "File Name: $0"
echo "Argument1: $1"
echo "Argument2: $2"
echo "Argument3: $3"

#output the number of arguments 
echo "Number of arguments: $#"

#show arguments as a string 
echo "Arguments: $*"

#show the process id of current scripts 
echo "PID: $$"

#show the last background process 
echo "Last background process PID: %!"


