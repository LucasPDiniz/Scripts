#!/usr/bin/python
#Use a scapy library

from scapy.all import *

portas = [21,80]

pIP = IP(dst=sys.argv[1])
pTCP = TCP(dport=portas,flags="S")
pacote = pIP/pTCP
resp, noresp = sr(pacote)


for resposta in resp:
	porta = resposta[1][TCP].sport
	flag = resposta[1][TCP].flags
	if(flag == "SA") :
		print "Porta %d ABERTA" %(porta)