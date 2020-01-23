#!/bin/bash
for i in {0..1000}
do
    date >> output.txt
    memsql -P 3307 -e "SHOW STATUS EXTENDED;" >> output.txt
    echo "" >> output.txt
    sleep 0.25;
done
