#!/bin/bash 

#only one dimension array are supported in bash 

my_array=(A B "C" D)

#assgin value to array element 
my_array[0]=E

#read array 
echo "The first element: ${my_array[0]}"
echo "The second element: ${my_array[1]}"

#get all elements in array 
echo "Elements in array is : ${my_array[*]}"
echo "Elements in array is : ${my_array[@]}"

#get the length of array 
echo "The length of array is ${#my_array[*]}"
echo "The length of array is ${#my_array[@]}"

