#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOLD=6
MESSAGE=""

while IFS= read -s $line
do 
    USAGE=$(echo $line | awk -F " " '{print$6F}'| cut -d "%" -f1 )
    if [ $USAGE -ge $DISK_THERSHOLD ]
    then 
        MESSAGE+="$usage is more than $DISK_THERSHOLD"
    fi
done <<< $DISK_USAGE    

echo message: $MESSAGE

#     if [ $DISKSPACE -gt $THERSHOLD ]
# then 
#     usage=$(df -hT | grep xfs | awk -F " " '{print$6F}')
# fi





