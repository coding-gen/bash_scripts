#!/bin/bash

# test.sh: a sample shell script to demonstrate the concept of Bash shell functions

# define usage function
usage(){
	echo "Usage: $0 arguments"
	exit 1
}

# invoke  usage
# call usage() function if argument not supplied
[[ $# -eq 0 ]] && usage
