#!/bin/bash

USERID=$(id -u)

#(id -u) is a command and this output of command will given to "USERID" variable as a value

if [ $USERID -ne 0 ]
then 
    echo "Please enter as run with super user"
    exit 1 # manually exit if error occures
else 
    echo "You're super user"
fi 

dnf install mysql -y

if [ $? -ne 0 ]         # $? is checking the pervious command is success or not 
then
    echo "Installation of mysql is failure"
    exit 1
else    
    echo "Installation of mysql is success"
fi 

dnf install git -y

if [ $? -ne 0 ]         # $? is checking the pervious command is success or not 
then   
    echo "Installation of git is failure"
    exit 1
else 
    echo "installation of git is success"
fi 

