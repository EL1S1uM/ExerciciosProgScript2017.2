#!/bin/bash

expr $1 + 1 1> /dev/null 2> /dev/stdout

	if [ $? == 0 ]
	then
	echo "É Número"
	else
	echo "Não é número"
	fi
