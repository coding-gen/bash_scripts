#!/bin/bash

echo "Enter a number."
while true; do
read
if [ $(($REPLY%2)) -eq 0 ] ; then
    echo "$REPLY is even."
else
    echo "$REPLY is odd."
fi
echo "Enter another number."
done
