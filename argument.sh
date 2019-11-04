#!/bin/bash 

#----------------------------------------------------------------------------------
# Arguments, are typically space-delimited fields given to a program, be they
# script or otherwise, which then gets interpreted and processed by said program.
# For example, in the command 'ls -l', the '-l' is both a field and argument to the
# 'ls' program.
# 
# A simple and common function of an argument, is to enable or disable a feature
# within the program, such as colors, debugging information, or extra verbosity.
#
# However, the function of a single argument can extend to several fields
# thereafter, such as specifying a flag followed by its own parameter. In Linux and
# similar systems, a flag typically begins with '-' or '--' for short and long
# format, respectively, hence its name.
#
# In the command 'find -type f', both '-type' and 'f' are fields, but '-type' is a
# flag, with 'f' being its parameter, or, if you prefer, its own argument. To put
# it simply, '-type' modifies find's behavior, and 'f' modifies the '-type' flag's
# behavior.
#
# This is how I've come to understand arguments, fields, and paramters.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

# like a script, but an argument 
echo "Command line argument"
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

# difference form $* and $@ which all refers to all command line arguments 
# difference: only differs when used in double quote
# suppose cmd line args are 1 2 3 $* refers to 1 2 3(one variable )
# $@ refers to three cmd line args 
echo "-- \$i example"
for i in $*; do 
	echo $i 
done 

echo "-- \$@ example"
for i in $@; do 
	echo $i 
done 

