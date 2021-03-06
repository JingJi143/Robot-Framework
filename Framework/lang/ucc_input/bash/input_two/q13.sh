#!/bin/bash
#
# Linux Shell Scripting Tutorial 1.05r3, Summer-2002
#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#
# Q13
#
# Shell script to print contains of file from given line no to next 
# given  numberlines
#

#
# Print error / diagnostic for user if no arg's given
#
if [ $# -eq 0 ] 
then
    echo "$0:Error command arguments missing!"
    echo "Usage: $0 start_line   uptoline   filename"
    echo "Where start_line is line number from which you would like to print file"
    echo "uptoline is line number upto which would like to print"
    echo "For eg. $0 5 5 myfile"
    echo "Here from myfile total 5 lines printed starting from line no. 5 to"
    echo "line no 10."
    exit 1
fi

#
# Look for sufficent arg's
#

    if [ $# -eq 3 ]; then
	if [ -e $3 ]; then
    	    tail +$1 $3 | head -n$2
         else
    	    echo "$0: Error opening file $3" 
	    exit 2
	fi   
    else
        echo "Missing arguments!"	
    fi

#
# ./ch.sh: vivek-tech.com to nixcraft.com referance converted using this tool
# See the tool at http://www.nixcraft.com/uniqlinuxfeatures/tools/
#
