#!/bin/sh

if [ $# -ne 2 ]; then
	echo "This script needs 2 parameters, specified $#"
	exit 1
fi

# Path
if [ !  -d "$1" ]; then
	echo "$1 is not a directory in the system"	
	exit 1
fi

filesdir=$1

# Text to search inside of all file in filesdir
searchstr=$2

NUMFILES=$(ls $filesdir -1 | wc -l)
NUMLINES=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are ${NUMFILES} and the number of matching lines are ${NUMLINES}"
