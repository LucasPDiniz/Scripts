import sys
from string import lowercase as lc

# BruteForce with 26 letters of import lowercase.
# This script decrypts cesar cipher files
# Use: python BruteFoceCesar.py fileEncrypted.txt

if len(sys.argv) <= 2 and len(sys.argv) > 1 :

    file = open(sys.argv[1], 'r').read().lower()

    for key in xrange(1,26):
        result = ''
        print 'key: ', key
        for lt in file:
            if lt in lc:
                idx = lc.find(lt)
                idx = (idx - key) % 26
                result += lc[idx]
            else:
                result += lt
        print result,
else:
    print '======================================================='
    print 'Please, Check the parameters, exemple;'
    print 'Brute Force...'
    print '- python BruteFoceCesar.py fileEncrypted.txt'
    print '======================================================='
