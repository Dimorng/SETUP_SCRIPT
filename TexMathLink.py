# Get link to download the lastest version of TexMath LibreOffice Extension

import urllib.request

with urllib.request.urlopen('https://sourceforge.net/projects/texmaths/files/') as HTML:
    line = ' '
    while line:
        line = HTML.readline().decode('utf-8')
        if '.oxt' in line:
            i = line.index('Tex')
            f = line.index('.oxt') + len('.oxt')
            tail = line[i:f]
            link = 'https://sourceforge.net/projects/texmaths/files/latest/' + tail
            print(link)
            break