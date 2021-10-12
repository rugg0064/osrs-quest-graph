from bs4 import BeautifulSoup
from urllib import request
import urllib

url = 'https://oldschool.runescape.wiki/w/Module:Questreq/data'
opener = urllib.request.build_opener() 
opener.addheaders = [('User-agent', 'Mozilla/5.0')]
data = opener.open(url).read()
soup = BeautifulSoup(data, 'html.parser')

with open('./questReqsLuaTable.lua', 'w') as f:
    print("getQuestTable = function()", file=f)
    text = soup.findAll('pre', None)[0].text
    for line in text.splitlines():
        print("\t" + line, file=f)
    print("end", file=f)