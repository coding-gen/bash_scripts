#!/bin/bash

# backup.sh a simple backup script

# define usage function
usage(){
	echo "Usage $0 name dir_to_backup"
	exit 1
}

# invoke  usage
# call usage() function if username not supplied
[[ $# <2 ]] && usage


backup_name=$1_$(date +%Y%m%d).tar.gz
tar -czf $backup_name $2 
