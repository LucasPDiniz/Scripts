#!/bin/bash

if [ "$1" == "" ]
then
	echo "Parsing HTML"
	echo "Exemple : ./bashName www.exemple.com"
else
wget $1;
echo -e "\e[33mScanning Host \e[5m... \e[25m\n";
sleep 3;
echo -e "\033[31mSubdomains Found ! ! !\e[0m\n"
echo -e "\033[33m==============================================================================\e[0m"

grep "href" index.html | cut -d "/" -f 3 | grep "\."  | cut -d '"' -f 1 | grep -v "<l" > list

for url in $(cat list);
    do 
     host $url | grep "has address";
    done
echo -e "\033[33m==============================================================================\e[0m\n"
fi