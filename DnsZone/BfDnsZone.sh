#!/bin/bash
#script bruteforce, use wordlist.txt. Exemple: ./dnsrecon.sh host
for word in $(cat wordlist.txt);do
host $word.$1 | grep -v "NXDOMAIN"
done 