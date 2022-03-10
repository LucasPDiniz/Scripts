#!/bin/bash
#use ./dnszone.sh host
for server in $(host -t ns $1 | cut -d " " -f 4);
do
host -l -a $1 $server
done