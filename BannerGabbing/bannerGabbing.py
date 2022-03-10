#!/usr/bin/python
import socket, sys

ip = raw_input("Enter IP:")
port = input("Enter PORT:")

socket1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket1.connect((ip,port))
banner = socket1.recv(1024)
print banner