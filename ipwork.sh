#!/bin/bash
ip a | grep inet > txt.txt 
cat txt.txt | head -n3 | tail -n1 > txt2.txt
wera=`tail -n 1  txt2.txt`
search="<h3>inet "
sed -i "s/$search/`<h3>inet"$wera`/"  index.html

