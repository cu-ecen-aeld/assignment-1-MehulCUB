#!/bin/sh
# Script : writer.sh
# write given string in the file with given path 
# Author : Mehul Patel


# check if number of arguments are valid
if [ $# -ne 2 ]
then
    echo !Error: Wrong Total number of arguments 
    echo Usage: ./writer.sh [1st arg] [2nd arg]
    echo [1st arg] : full path to file including filenam
    echo [2nd arg] : text string to be written
    exit 1
fi

# arg 1 - full path to file including filename 
WRITEFILE=$1

# arg 2 - text string to be written in this file
WRITESTR=$2


# write user entered string to file using ouput redirection to file,overwrite if file already present, create a new file if file does not exist
echo $WRITESTR > $WRITEFILE

# check for return code of the echo command
if [ $? -eq 0 ]
then 
    exit 0
else
    echo "!Error: File could not be created at: ${WRITEFILE}"
    exit 1
fi

exit 0
