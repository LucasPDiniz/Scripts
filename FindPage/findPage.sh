#!/bin/bash
#Use ./findpage Host + Extension (ASP, PHP...)
#Need to install lynx. yum or apt install lynx

lynx -dump "http://google.com/search?num=500&q=site:"$1"+ext:"$2"" | cut -d "=" -f 2 | grep ".$2" | egrep -v "site|google" | sed s'/...$//'g