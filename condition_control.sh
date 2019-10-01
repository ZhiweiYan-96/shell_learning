# if condition 
# then 
#     command1 
#     command2 
#     commdan3 
#fi 

#if condition 
#then 
#    command1 
#    command2 
#else 
#    command 
#fi 


#if condition1 
#then 
#    command1 
#elif condition2
#then 
#    command2 
#else 
#    commdanN
#fi 

a=10 
b=20 
if [ $a == $b ]
then 
   echo "a equals b"
elif [ $a -gt $b ]
then 
   echo "a greater than b "
elif [ $a -lt $b ] 
then 
   echo "a less than b"
else 
   echo "No condintion staisified"
fi 

# if else statement usually related to test command 
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then 
     echo 'Two numbers are equal'
else 
     echo "Two numbers are not euqal "
fi 

#for loop 
#for var in item1 item2 ... itemN 
#do 
#	commman1 
#	command2
#done 
for var in 1 2 3 4 5 
do
	echo $var 
done 

for str in "This is a string"
do 
	echo $str
done 

#while loop 
#while condition 
#do 
#	command 
#done 

int=1 
while(($int<=5))
do 
	echo $int 
	let "int++"
done 

#case statement 
#case value in 
# patter1)
#	command1
#	command2
#	;;
# pattern2)
#	command1
#	;;
#esac 

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
	echo "You chosse 3"
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
		#This code is a permanet loop"
		echo "Game over"
		;;
	esac 
done 
