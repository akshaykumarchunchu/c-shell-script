#!/bin/bash

set -e 

failure(){
    echo "failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

#(id -u) is a command and this output of command will given to "USERID" variable as a value

if [ $USERID -ne 0 ]
then 
    echo "Please enter as run with super user"
    exit 1 # manually exit if error occures
else 
    echo "You're super user"
fi 

dnf install mysqlll -y

dnf install git -y

