#!/bin/bash

DISKSPACE=$(df -hT | grep xfs)
THERSHOLD=6

if [ $DISKSPACE -gt $THERSHOLD ]
then 
    usage=$(df -hT | grep xfs | awk -F " " '{print$6F}')
fi





