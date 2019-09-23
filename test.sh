#!/bin/bash 

num1=100 
num2=100 
if test $[num1] -eq $[num2] 
then 
    echo "These two variables are qeual"
else 
    echo " These two variables are not equal"
fi 

# []  is used for evaluating basic computation 
a=5
b=6 
result=$[a+b]
echo "Result is :$result"

#String test 
# = test equal 
# != test uneuqal 
# -z test whether the length of str is 0 
# -n test whether the length of  str is not 0 

