#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOLD=6

while IFS= read -s $line
do 
    usage=$(df -hT | grep xfs | awk -F " " '{print$6F}')
done <<< $DISK_USAGE    
#     if [ $DISKSPACE -gt $THERSHOLD ]
# then 
#     usage=$(df -hT | grep xfs | awk -F " " '{print$6F}')
# fi





