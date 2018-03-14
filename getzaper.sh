#!/bin/sh
# this script download mirror russian bloack list and parse it
# for squid-proxy project 

wget https://github.com/zapret-info/z-i/raw/master/dump.csv
cat dump.csv | sed 1d | cut -d ';' -f 3 | tr "\|" "\n" |sed 's/^[ \t]*//;s/[ \t]*$//' | sed '/^$/d' | uniq >list.txt 

cp list.txt /etc/squid/
rm -rf dump.csv
rm -rf list.txt
