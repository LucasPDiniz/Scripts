#!/bin/bash

if [ "$1" == "" ]
then
	echo "Ping Sweep"
	echo "Enter argument (Network) - Exemple : 192.168.0"
else
    for host in {1..254};
    do
        ping -W 0,5 -c 1 $1.$host | grep "64 bytes"  | cut -d ":" -f1;
    done;
fi