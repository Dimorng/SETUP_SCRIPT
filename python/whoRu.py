# find username base on link given by tmp.link file

with open('/home/tmp.link', 'r') as Path:
    c = Path.read().split('/')[2]
    print(c)