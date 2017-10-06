#!/bin/bash

total=$(cat emails_databases.txt | grep "$1" | wc -l)
echo "Total: $total"
cat emails_databases.txt | grep "$1"

