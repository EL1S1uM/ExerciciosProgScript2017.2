#!/bin/bash
cat index.html | tail -n 269 | head -n 234 > limpo.txt
cat limpo.txt | grep -B 3 -A 2 '<td>4</td>' > remover.txt
cat remover.txt | grep -v 'Fundamentos de Programação' > remover_limpo.txt
grep -vf remover_limpo.txt limpo.txt > final.txt
cat final.txt

rm limpo.txt remover.txt remover_limpo.txt
