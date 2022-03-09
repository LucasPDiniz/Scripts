#!/usr/bin/python
import socket, sys

#Used argv, exemple : script.py 192.168.0.1

for port in range(70,90):
        socket1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        if socket1.connect_ex((sys.argv[1],port)) == 0:
                print port,"open"
                socket1.close()