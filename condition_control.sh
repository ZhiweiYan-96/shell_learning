#!/bin/bash

#----------------------------------------------------------------------------------
# An if statement executes one or more commands based upon one or more given
# conditions. Such statements, similar to other blocks of code, can be nested for
# further, more complex testing.
#
# One examples of a condition might be to test for an attribute or existence of a
# file, be it a directory, block special, socket, link, FIFO, or otherwise.
#
# Conditions within an if statement can make use of many conditional expressions
# and comparison operators, such as '='/'==', '>' and '-eq'. There are a set of
# operators for string comparison, another for numeric comparisons, and a set even
# for comparing files, such as whether one is newer than the other.
#
# In bash, and provided it's available, you have the option of using '[[' over the
# '[' standard, POSIX-compliant used in the Bourne Shell ('sh'), which allows for a
# great number of newer features, such as testing for whether a REGEX '=~' or glob
# '==' string is matched or not.
#
# As with various other areas of shell usage, you need not only test for the
# success of a condition, but can also test specifically for its failure, by use of
# the '!' negation operator. I may, for example, wish to test for a file NOT
# existing, in order to then create one.
#
# Conditions in if statements, and other places in shell, often make use of the
# '&&' and '||' operators, which, context allowing, can also be written as '-a' and
# '-o', meaning 'and' and 'or', respectively.
#
# Put simply, one statement could be described in human-readable terms, as:
#
#   if condition one is true and condition two is false, then do commands, else if
#   condition one is false and condition two is false, then do other commands, else
#   (neither apply) do something different.
#
# The above would be written as:
#
#   if condition_one && ! condition_two
#   then
#   	commands
#   elif ! condition_one && ! condition_two
#   then
#   	other_commands
#   else
#   	something_different
#   fi
#
# The format of an if statement can vary, but the two most common formats are:
#
#   if condition; then
#   	commands
#   fi
#
#   if condition
#   then
#   	commands
#   fi
#
# As I understand it, the latter example is the by-the-book approach.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

# If statement:
#
#   if condition1
#   then
#   	commands
#   elif condition2
#   then
#   	commands
#   else
#   	commands
#   fi

a=10
b=20
if [ $a -eq $b ]
then
	echo "a equals b"
elif [ $a -gt $b ]
then
	echo "a greater than b "
elif [ $a -lt $b ]
then
	echo "a less than b"
else
	echo "No condition satisfied"
fi

# if else statement usually related to test command
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
	echo 'Two numbers are equal'
else
	echo "Two numbers are not equal "
fi

#----------------------------------------------------------------------------------
# Loops are necessary in most, if not all programming languages. You very often
# have a series of items, such as strings, over which to iterate the same set of
# commands. This set of commands can even vary based on which item is currently
# being processed.
#
# There are two main loops in shell, 'for' and 'while'. There is an 'until' loop
# but since it's just the opposite of 'while', it doesn't seem often used.
#
# A for loop uses a special variable to which data is assigned the contents of the
# currently iterated item. This variable need not be used within code executed, but
# it is none-the-less a very useful feature.
#
# The formatting of a for loop can vary quite a bit. Here are some approaches:
#
#   for loop in 
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

# For loop:
#
#   for var in item1 item2 ... itemN
#   do
#   	command1
#   	command2
#   done

for var in 1 2 3 4 5
do
	echo $var
done

for str in "This is a string" "and another" "and yet another"
do
	echo $str
done

# While loop:
#
#   while condition
#   do
#   	command
#   done

int=1
while(($int<=5))
do
	echo $int
	let "int++"
done

# Case statement:
#
#   case value in
#   	pattern1)
#   		command1
#   		command2
#   		;;
#   	pattern2)
#   		command1
#   		;;
#   esac

echo "Please input value in [1,4]:"
read aNum
case $aNum in
	1)
	echo "You choose 1"
	;;
	2)
	echo "You choose 2"
	;;
	3)
	echo "You choose 3"
	;;
	4)
	echo "You choose 4"
	;;
	*)
	echo "Your number is not in [1,4]"
	;;
esac


#break
while :
do
	echo -n "Please input a number in [1,5]"
	read aNum
	case $aNum in
	1|2|3|4|5)
	echo "The number you input is $aNum"
	;;
	*)
	echo "The number you input is not in [1,5], Jump out of loop"
	break
	;;
	esac
done

#continue
while :
do
	echo -n "Please input a number in [1,5]"
	read aNum
	case $aNum in
		1|2|3|4|5)
		echo "Thu number you input is $aNum"
		;;
		*)
		echo "The number you input is not in [1,5]"
		continue
		#This code is a permanent loop"
		echo "Game over"
		;;
	esac
done
