#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-log


if [ -d $SOURCE_DIRECTORY ]
then 
    echo "source directory exists"
else
    echo "Please make source directory exists"
    exit 1
fi

