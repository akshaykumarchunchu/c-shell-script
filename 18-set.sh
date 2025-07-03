#!/bin/bash

set -e                      # set -e will auto exit the code when their is a error on the command line

failure(){
    echo "failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR        # Will find the error from the code and line 

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

