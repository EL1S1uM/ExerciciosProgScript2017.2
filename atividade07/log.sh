#!/bin/bash

## TESTAR COM MESES DE AGOSTO (Aug)

	if [ $# -lt 1 ]
	then
	echo "Uso $0 DIA MES"
	fi

aux=$(echo "$2_$1" | tr "$2_$1" "$1_$2")
var=$(echo "$1 $2" | tr "$1 $2" "$2 $1")

cd mail/

ls | xargs grep "$var" > ../mail_$aux.log
