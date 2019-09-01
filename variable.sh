!/bin/bash 

#define variable 
# No space between variable name equation symobl 
hello="hello world"

#use variable 
echo $hello


#some test case 
for file in `ls /etc`; do
    echo $file
done

#{} can bse use to explicitly show the boundary of variable 
for skill in Ada Coffee Action Jave; do 
    echo "I am good at ${skill}Script"
done 

#readonly variable 
myUrl="https://github.com"
readonly myUrl
#follwing line will complain since the readonly variable cann't be changed
#myUrl="https://goole.com"

#Delte variable 
#unset myUrl  #Read Only Variable cannot be deleted 
#echo $myUrl  
unset hello 
#Since hello is deleted, there will be no output 
echo $hello 

#String 
#Single quote : varaible cannot be used in single quote 
str='this is a string'

#Double quote: variable and escape character are allowed in double quote
your_name='hello'
str="Hello, I know your are \"$your_name\"!\n"
echo -e $str

#concat string 
your_name="runoob"
greeting="hello."$your_name"!"
greeting_1="hello,${your_name}!"
echo $greeting $greeting_1 
#concat using single quote 
greeting_2='hello,'$your_name'!'
greeting_3='hello,${your_name}!'
echo $greeting_2 $greeting_3 

#get length of string 
string='abcd'
echo ${#string}

#extract substring 
string="runnoob is a great site"
echo ${string:1:4}

#find substring, output the location of finded substring
string="runnob is a great site"
echo `expr index "$string" io`
