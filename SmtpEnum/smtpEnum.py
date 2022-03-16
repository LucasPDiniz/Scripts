#!/usr/bin/python
#Need to have a wordlist within the same directory as the script
import socket,sys,re

file = open("wordlist.txt")
for lin in file:
	tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	tcp.connect((sys.argv[1],25))
	banner = tcp.recv(1024)
	tcp.send("VRFY "+lin)
	user = tcp.recv(1024)
	if re.search("252",user):
		print "User found: "+user.strip("252 2.0.0")
