#get the lastest LibreOffice .deb url

from urllib.request import *

with urlopen("https://downloadarchive.documentfoundation.org/libreoffice/old/latest/deb/x86_64/") as dwPage:
    line = ' '
    while line:
        line = dwPage.readline()
        line = line.decode('utf-8')
        if 'deb.tar.gz"' in line:
            i = line.index('LibreOffice')
            f = line.index('deb.tar.gz"') + len('deb.tar.gz"') - 1
            linkTail = line[i:f]
            dwLink = 'https://downloadarchive.documentfoundation.org/libreoffice/old/latest/deb/x86_64/' + linkTail
            print(dwLink)
    

