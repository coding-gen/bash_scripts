#!/bin/bash

for i in {1..10};
do
    if [ $(($i%2)) -eq 0 ] ; then
        echo "$i is even."
    else 
        echo "$i is odd."
    fi
done

echo "Enter a number."
read
if [ $(($REPLY%2)) -eq 0 ] ; then
    echo "$REPLY is even."
else
    echo "$REPLY is odd."
fi
