# get download link of lastest version of SBBIC Khmer spelling checker for LibreOffice

import urllib.request

allVersion = []
with urllib.request.urlopen('https://extensions.libreoffice.org/en/extensions/show/khmer-spelling-checker-sbbic-version') as Paragraph:
    line = ' '
    while line:
        line = Paragraph.readline().decode('utf-8')
        if '.oxt' in line:
            i = line.index('sbbic')
            f = line.index('.oxt') + len('.oxt')
            tail = line[i:f]
            link = 'https://extensions.libreoffice.org/assets/downloads/z/' + tail
            print(link)
            break