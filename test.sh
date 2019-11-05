#!/bin/bash

#----------------------------------------------------------------------------------
# Comparison operators for strings:
#
#   =          - Equal to. (not to be confused with variable assignment!)
#   ==         - As above, although not sh-friendly. Common syntax.
#   !=         - Not equal to.
#   -z         - The length of the string is 0.
#   -n         - The length of the string is greater than 0.
#
# Comparison operators for integers:
#
#   -eq        - Equal to.
#   -ne        - Not equal to.
#   -gt        - Greater than.
#   -ge        - Greater than or equal to.
#   -lt        - Less than.
#   -le        - Less than or equal to.
#
# Some common special operators for files:
#
#   -f         - Is a (standard) file.
#   -d         - Is a directory.
#   -l         - Is a symbolic link.
#   -b         - Is a block special file.
#   -e         - Exists. (regardless of type)
#   -r         - Has read access.
#   -w         - Has write access.
#   -x         - Has execute access.
#
# See `man bash` for information on many more operators.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo "These two variables are equal"
else
    echo "These two variables are not equal"
fi

#----------------------------------------------------------------------------------
# There also exists arithmetic evaluation, but bash itself doesn't (at least yet)
# support floating point numbers, only integers, so it is in that regard somewhat
# limited. None-the-less, here are some examples:
#
# The following will assign the variable 'A' the integer value of 1+1. Remember, -
# the sigil ('$') here should tell you that it's something the shell will expand
# upon, conditions allowing.
#
#   A=$[1+1]
#
# The answer to the above would of course be 2, meaning 'A' would be assigned the
# integer value of '2'. I say integer, but it technically could be a string, too.
#
# The following would test for the value being true, but nothing is expanded, at
# least, no output is offered, as this is purely for testing purposes.
#
#   ((1+1))
#
# Since it does equal 2, which is greater than 0, the test will succeed. Should the
# above be written as follows, the test would fail, as it would be 0:
#
#   ((1-1))
#
# There are a number of arithmetic operators available, including the common ones.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

a=5
b=6
result=$[a+b]
echo "Result is :$result"
