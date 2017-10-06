#!/bin/bash

cat emails_databases.txt | grep "$1" | cut -d ":" -f 1
