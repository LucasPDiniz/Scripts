#!/usr/bin/python
import urllib

site = urllib.urlopen("www.site.com")
server = site.info()

print server
