#!bin/bash
if [ -x "$1" ]
then 
	echo "File is executable"
elif [ -w "$1" ]
then
	echo "File is writable"
fi
