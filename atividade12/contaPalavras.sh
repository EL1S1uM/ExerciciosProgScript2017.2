#!/bin/bash
echo -n "Informe o arquivo: "; read file
vet=($(cat $file))
echo ${vet[@]} | sed 's/ /\n/g' | sed 's/\.//g' | sort | uniq -c | sort -rn
