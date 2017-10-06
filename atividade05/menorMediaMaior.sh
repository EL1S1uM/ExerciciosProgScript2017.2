#!/bin/bash

menor=$(echo $* | sed 's/ /\n/g' | sort | head -1)
maior=$(echo $* | sed 's/ /\n/g' | sort | tail -1)

soma=$(echo $* | sed 's/ /+/g' | bc)
media=$(expr $soma / $#)

echo "Menor: $menor"
echo "Maior: $maior"
echo "Media: $media"
