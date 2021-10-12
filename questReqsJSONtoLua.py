import json
quests = {}
with open('./questReqs.json') as json_file:
    quests = json.load(json_file)
    
#print(quests)

nl = '\n'

with open('./questReqsLuaScraped.lua', 'w') as f:
    f.write('getQuestTable = function()\n')
    f.write('\tlocal questReqs = {\n')
    for i, key in enumerate(quests):
        sanitizedKey = key.replace(r"'", r"\'")
        f.write(f'\t\t[\'{sanitizedKey}\'] = {{ {nl}')
        f.write('\t\t\t[\'quests\'] = {\n')
        
        questSet = quests[key]
        numOfQuests = len(questSet)
        for j, quest in enumerate(questSet):
            sanitizedquest = quest.replace(r"'", r"\'")
            f.write(f'\t\t\t\t\'{sanitizedquest}\'')
            if(j != numOfQuests - 1):
                f.write(',')
            f.write('\n')
        
        f.write('\t\t\t}\n')
        f.write('\t\t}')
        if(i != len(quests)-1):
            f.write(',')
        f.write('\n')
    f.write('\t}\n')
    f.write('\treturn questReqs\n')
    f.write('end')
        #print(key, quests[key])