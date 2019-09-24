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

