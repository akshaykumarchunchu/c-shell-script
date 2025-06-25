#!/bin/bash

COURSE="Devops from current script"

echo "Before calling from other script:$COURSE"
echo "PROCESS ID of current shell script: $$"

./17-other-script.sh 

echo "After calling from cureent script: $COURSE"
echo "Process ID of current shell script: $$"









