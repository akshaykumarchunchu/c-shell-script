#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-log


if [ -d $SOURCE_DIRECTORY ]
then 
    echo "source directory exists"
else
    echo "Please make $SOURCE_DIRECTORY exists"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name ".log" -mtime +14)

echo "files deletes:$FILES"


