# Get link to download the lastest version of vscode
import urllib.request

with urllib.request.urlopen('http://packages.microsoft.com/repos/code/pool/main/c/code/') as HTML:
    allVersion = []
    line = ' '
    while line:
        line = HTML.readline().decode('utf-8')
        if 'amd64.deb' in line:
            i = line.index('code')
            f = line.index('amd64') + len('amd64.deb')
            allVersion.append(line[i:f])
    tail = allVersion[-1]
    link = 'http://packages.microsoft.com/repos/code/pool/main/c/code/' + tail
    print(link)