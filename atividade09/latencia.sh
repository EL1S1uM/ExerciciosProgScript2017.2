#!/bin/bash

for lista in $(cat $1)
do
	echo IP: $lista - Média: $(ping -c 10 $lista | grep 'rtt' | cut -d "/" -f 5) >> temp.txt
done
cat temp.txt | sort -h -k 5 && rm temp.txt
