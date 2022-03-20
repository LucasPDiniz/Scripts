import sys
from string import lowercase as lc

# Encrypt / Descypt Vigenere mode

if len(sys.argv) > 3:
 
    file = open(sys.argv[1],'r').read().lower()
    key = sys.argv[2].lower()
    mode = sys.argv[3]

    result = ''
    keyidx = 0

    for lt in file:
        if lt in lc:
            idx = lc.find(lt)
            if mode == 'enc':
                idx += lc.find(key[keyidx%len(key)])
            elif mode == 'dec':
                idx -= lc.find(key[keyidx%len(key)])
            result += lc[idx%26]
            keyidx += 1
        else:
            result += lt

    print result,

else:
    print '======================================================='
    print 'Please, Check the parameters, exemple;'
    print 'Encrypting...'
    print '- python EncDecVigenere.py fileCleanText keyword enc'
    print 'Decrypting...'
    print '- python EncDecVigenere.py fileEncrypted keyword dec'
    print '======================================================='
    print 'To decrypt, it is necessary to use the same key when encrypted.'