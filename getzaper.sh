#!/bin/sh
#mkdir list
cd list
#git clone https://github.com/zapret-info/z-i.git
cat dump.csv | sed 1d | cut -d ';' -f 3 | tr "\|" "\n" |sed 's/^[ \t]*//;s/[ \t]*$//' |uniq >list.txt 

