#!/bin/bash

if [ $# -ne 2 ]; then
	echo "The scripts needs 2 arguments...(current $#)"
	exit 1
fi

# File system
writefile=$1

# Text argument
writestr=$2

path=$(dirname $writefile)

if [ ! -d $path ]; then
	mkdir -p $path
fi

echo "$writestr" > "$writefile"

