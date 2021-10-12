for k,v in pairs(questReqs) do
	curQuestReqText = ""
	for k2,v2 in pairs(questReqs[k]['quests']) do
		curQuestReqText = curQuestReqText .. ',' .. v2
	end
	print(k .. curQuestReqText )
end