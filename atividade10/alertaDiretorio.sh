#!/bin/bash
q=$(ls | wc -l)

while [ 1 ]
do
	q1=$(ls | wc -l)
	if [ $q != $q1 ]
	then
		echo "Arquivos: $q1"
		echo "teste" | mail -s "isso é um teste" felipe.citnnet@@gmail.com
		q=$q1
	fi
	sleep 60
done

