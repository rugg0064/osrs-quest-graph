from bs4 import BeautifulSoup
import bs4
from urllib import request
import urllib
import json

def getQuestReqs(questName):
    url = 'http://oldschool.runescape.wiki/w/' + urllib.parse.quote(questName.replace(' ','_'))
    opener = urllib.request.build_opener() 
    opener.addheaders = [('User-agent', 'Mozilla/5.0')]
    data = opener.open(url).read()
    soup = BeautifulSoup(data, 'html.parser')
    quests = []
    for line in soup.findAll('li', None):
        #
        if("Completion of the following quests" in line.text):
            #print(line.text)
            x = line.contents
            #print(type(x[1]))
            questReqNavString = x[1] #x1 is an element tag
            for item in questReqNavString.children:
                if(not isinstance(item, bs4.element.NavigableString)):
                    lines = item.get_text().splitlines()
                    #A little hack because A Kingdom Divided has a weird structure
                    if(lines[0] != 'The above quests all require the following quests to be completed:'):
                        quests.append(lines[0])
        text = line.text
    return quests

#print("Dragon Slayer II", getQuestReqs("Dragon Slayer II"))

questList = None
#with open("C:/Users/Matthew/Desktop/book2.csv","r") as file:
with open("./book2.csv","r") as file:
    content = file.read()
    questList = content.splitlines()

questReqs = {}
for line in questList:
    questReqs[line] = getQuestReqs(line)
    print(line, getQuestReqs(line))

with open('./questReqs.json', 'w') as outfile:
    json.dump(questReqs, outfile)