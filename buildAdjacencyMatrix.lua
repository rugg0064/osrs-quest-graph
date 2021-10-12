require 'questReqsLuaTable'
--require 'questReqsLuaScraped'
quests = getQuestTable()

-- Add all the quests from the quest table first
orderedQuests = {}
n = 0
for k,v in pairs(quests) do
	n = n + 1
	orderedQuests[n] = k
end

-- Now, create a string-indexed collection of the quests
-- For the beginning of this, questNameToID is just used
-- ass a collection to see if they are already in orderedQuests
questNameToID = {}
for k,v in pairs(orderedQuests) do
	questNameToID[v] = k
end

-- To make sure we catch the weird 'quest reqs' like "start quest XYZ" 
-- We need to go through and add every prereq, if its not already in there.
for k,v in pairs(quests) do
	for k2,v2 in pairs(quests[k]['quests']) do
		questExists = questNameToID[v2] ~= nil
		if not questExists then
			n = n + 1
			orderedQuests[n] = v2
			questNameToID[v2] = n
		end
	end
end

-- Sort orderedQuests and rebuild the name -> id table
table.sort(orderedQuests)
questNameToID = {}
for k,v in pairs(orderedQuests) do
	questNameToID[v] = k
end

--[[
for k,v in pairs(orderedQuests) do
	print(k,v)
end
]]--

-- In this adjacency matrix, we can represent the prerequisites as
-- "Horizontal requires vertical" or "horizontal points to vertical"
-- where the horizontal is the primary axis, 
-- ie: adjacencyMatrix["Elemental Workshop II"]["Elemental Workshop I"]
-- means "EW2 requires EW1 to complete"
adjacencyMatrix = {}
for i=1,n do
	adjacencyMatrix[i] = {}
	curQuestName = orderedQuests[i]
	for j=1,n do
		adjacencyMatrix[i][j] = 0
	end
	
	questData = quests[curQuestName]
	if(questData ~= nil) then
		for k,v in pairs(questData['quests']) do
			id = questNameToID[v]
			if id ~= nil then
				adjacencyMatrix[i][id] = 1
			end
		end
	end
end


-- This is indexes by quest name
nodeHeights = {}
for k,v in pairs(orderedQuests) do
	nodeHeights[v] = 0
end

-- This assumes that the childQuest (current quest) is
-- in the correct state, it then fixes all of its parents
fixHeight = function(childQuest)
	local childQuestID = questNameToID[childQuest]
	local childQuestHeight = nodeHeights[childQuest]
	--Find all nodes that are PARENTS of childQuest
	
	for k2,v2 in pairs(orderedQuests) do
		local isParented = adjacencyMatrix[k2][childQuestID]
		if(isParented == 1) then
			nodeHeights[v2] = math.max(nodeHeights[v2], childQuestHeight + 1)
			fixHeight(v2)
		end
	end
end

--Time to find node heights
for k,v in pairs(orderedQuests) do
	fixHeight(v)
end

--[[
for k,v in pairs(orderedQuests) do
	print(nodeHeights[v], v)
end
]]--

--print(nodeHeights['Sins of the Father'])
--print(adjacencyMatrix[questNameToID['Nature Spirit']][questNameToID['The Restless Ghost']])

--print(adjacencyMatrix[78][145])

maxHeight = 0
for k,v in pairs(orderedQuests) do 
	maxHeight = math.max(maxHeight, nodeHeights[v])
end

questNamesByHeight = {}
questNamesByHeight['bottomNoparent'] = {}
for i=0,maxHeight do
	questNamesByHeight[i] = {}
end

for k,v in pairs(orderedQuests) do 
	nodeHeight = nodeHeights[v]
	if(nodeHeight == 0) then
		--check if it has any parents
		hasParent = false
		for i=1,n do
			if(adjacencyMatrix[i][k] == 1) then
				hasParent = true
				break
			end
		end
		if(hasParent) then
			table.insert(questNamesByHeight[nodeHeight], v)
		else
			table.insert(questNamesByHeight['bottomNoparent'], v)
		end
	else
		table.insert(questNamesByHeight[nodeHeight], v)
	end
	
end

--[[
for k,v in pairs(questNamesByHeight) do
	print(k,v)
	for k2,v2 in pairs(v) do
		print('',k2,v2)
	end
end
]]--

--[[
--]]
print('digraph D {')

print('\tsplines=ortho')
print('\tgraph [pad="0.15", nodesep="0.5", ranksep="0.75"]')
--[[
]]--
for k,v in pairs(questNamesByHeight) do
	print('\tsubgraph subs' .. k .. '{')
	print('\t\trank = "same"')
	
	for k2,v2 in pairs(v) do
			print('\t\t' .. '"' .. v2 .. '"' .. ' ' .. '[shape=box]')
	end
	
	print('\t}')
end
--[[
for k,v in pairs(orderedQuests) do
	print('\t' .. '"' .. v .. '"' .. '' .. '[shape=box]')
end
]]--
print('\t"Vampyre Slayer" -> "A Porcine of Interest" [style = invis]')
for k,v in pairs(orderedQuests) do
	for k2,v2 in pairs(adjacencyMatrix[k]) do
		if(v2 == 1) then
			print('\t"' .. v .. '" -> "' .. orderedQuests[k2] .. '" [penwidth=2, color=black]')--[color="black:invis:black"]
		end
	end
end
print('}')