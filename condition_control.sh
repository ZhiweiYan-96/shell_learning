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


