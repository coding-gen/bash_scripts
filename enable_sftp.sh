#!/bin/bash

# Usage: sudo ./enable_sftp.sh username

# If user doesn't exist, create it
$(id -u $1 >/dev/null 2>&1 )
if [ $? -eq 1 ]; then
    adduser $1
    passwd $1
fi

# Add user to sftp_users Group
usermod -a -G sftp_users $1

# Setup the sftp directory
if [ ! -e /ftp/data/$1_SFTP/home ]; then
    mkdir -p /ftp/data/$1_SFTP/home
fi
chmod 700 /ftp/data/$1_SFTP/home
chown $1:$1 /ftp/data/$1_SFTP/home

# Mount the home directory
if [ $(grep -c $1_SFTP /etc/fstab ) -eq 0 ]; then
    echo "/ftp/data/$1   /ftp/data/$1_SFTP/home   none   bind   0 0" >> /etc/fstab
fi
mount -a
