#!/bin/bash

# Only one-dimensional arrays are supported in bash.

#----------------------------------------------------------------------------------
# In the Bourne Again Shell, both standard and associative arrays are possible. An
# Array Variable is a variable assigned several fields of data, be they numeric, -
# alphabetic, or alphanumeric.
#
# Each field within an array is handled as though it were an individual variable, -
# but also, each field is assigned its own numeric index within an array, beginning
# with 0. Associative arrays allow for labelling each index by a string.
#
# An array could be likened to a library. The library is the array variable, but
# each index within is a book. Inside each book is data, akin to each index of an
# array variable being assigned data.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

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

