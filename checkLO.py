# check Latest version of LibreOffice available in Official Website

import urllib.request

with urllib.request.urlopen('https://downloadarchive.documentfoundation.org/libreoffice/old/latest/deb/x86_64/') as webPage:
    line = ' '
    while line:
        line = webPage.readline().decode('utf-8')
        if 'deb.tar.gz"' in line:
            i = line.index('LibreOffice')
            f = line.index('deb.tar.gz"') + len('deb.tar.gz"') - 1
            print(line[i:f])