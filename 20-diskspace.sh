#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOLD=6

while IFS= read -s $line
do 
    usage=$(echo $line | awk -F " " '{print$6F}')
    if [ $usage -ge $DISK_THERSHOLD ]
    then 
        echo "$usage is more than $DISK_THERSHOLD"
    else
        echo "$usage is less then $DISK_THERSHOLD"
    fi
done <<< $DISK_USAGE    


#     if [ $DISKSPACE -gt $THERSHOLD ]
# then 
#     usage=$(df -hT | grep xfs | awk -F " " '{print$6F}')
# fi





