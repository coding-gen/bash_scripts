#!/bin/bash

# Usage ./grep_json.sh file.json key

find . -name $1 | xargs grep -B1 $2 | grep Value
