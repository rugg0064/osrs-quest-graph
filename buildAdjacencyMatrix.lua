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
for i=1,maxHeight+2 do
	questNamesByHeight[i] = {}
end

for k,v in pairs(orderedQuests) do 
	local nodeHeight = nodeHeights[v]
	if(nodeHeight == 0) then
		--check if it has any parents
		local hasParent = false
		for i=1,n do
			if(adjacencyMatrix[i][k] == 1) then
				hasParent = true
				break
			end
		end
		
		if not hasParent then
			nodeHeight = nodeHeight - 1
		end
	end
	table.insert(questNamesByHeight[1 + maxHeight - nodeHeight], v)
end

split = {{8,4}, {7, 3}, {6,3}}
for k,v in ipairs(split) do
	local oldN = table.getn(questNamesByHeight)
	local numSections = v[2]
	local numNew = numSections - 1
	for i=1,numNew do
		table.insert(questNamesByHeight, {})
	end
	
	for i=table.getn(questNamesByHeight), v[1]+numNew, -1 do
		questNamesByHeight[i] = questNamesByHeight[i - numNew]
	end
	
	local totalBucket = questNamesByHeight[v[1]]
	
	for i=v[1],v[1]+numNew do
		questNamesByHeight[i] = {}
	end
	
	local i = 0
	for k2,v2 in pairs(totalBucket) do
		local curBucket = v[1] + i%v[2]
		i = i + 1
		table.insert(questNamesByHeight[curBucket], v2)
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
print('\tgraph [pad="0.15", nodesep="0.5", ranksep="0.5"]')
--[[
]]--

alignmentNodes = {}

for k,v in pairs(questNamesByHeight) do
	print('\tsubgraph subs' .. k .. '{')
	print('\t\trank = "same"')
	local alignmentNode = 'alignmentNode' .. k
	print('\t\t' .. alignmentNode .. '[style=invis]') --
	table.insert(alignmentNodes, alignmentNode)
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
for k,v in pairs(orderedQuests) do
	for k2,v2 in pairs(adjacencyMatrix[k]) do
		if(v2 == 1) then
			print('\t"' .. v .. '" -> "' .. orderedQuests[k2] .. '" [penwidth=2, color=black]')--[color="black:invis:black"]
		end
	end
end


for i=2, table.getn(alignmentNodes) do
		print('\t' .. alignmentNodes[i-1] .. ' -> ' .. alignmentNodes[i] .. ' [ style = invis ]' )
end

print('}')