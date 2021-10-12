getQuestTable = function()
	--
	-- Part of [[Template:Questreq]]'s implementation
	--[[
	To add a new quest to this database, please copy and paste the template below.
	Replace Name_of_quest, skill_name, and skill_level with appropriate parameters.
	'ironman' and 'boostable' are optional arguments for skill requirements.
	
	Please try to maintain alphabetical order ('The' is ignored in quest name similar to 
	how it is in the in-game quest list).
	Pay close attention to formatting of commas.
	Double check that all quest requisites are defined, otherwise a script error will occur
	Look at other quest formatting for help.
	
	------------------QUEST TEMPLATE-----------------------
	    ['Name_of_quest'] = { 
	        ['quests'] = {
	            'subquest', 
	            'subquest', 
	            'subquest'
	        },
	        ['skills'] = {
	            {'skill_name', skill_level},
	            {'skill_name', skill_level, 'ironman'},
	            {'skill_name', skill_level, 'boostable'},
	            {'skill_name', skill_level, 'ironman', 'boostable'}
	        }
	    },
	-------------------------------------------------------
	--]]
	 
	local questReqs = {
	    ['Animal Magnetism'] = { 
	        ['quests'] = {
	            'Ernest the Chicken', 
	            'Priest in Peril', 
	            'The Restless Ghost'
	        },
	        ['skills'] = {
	            {'Crafting', 19},
	            {'Prayer', 31, 'ironman'},
	            {'Ranged', 30},
	            {'Slayer', 18},
	            {'Woodcutting', 35}
	        }
	    },
	    ['Another Slice of H.A.M.'] = { 
	        ['quests'] = {
	            'Death to the Dorgeshuun', 
	            'The Giant Dwarf', 
	            'The Dig Site', 
	            'Druidic Ritual'
	        },
	        ['skills'] = {
	            {'Attack', 15},
	            {'Prayer', 25}
	        }
	    },
	    ['The Ascent of Arceuus'] = { 
	        ['quests'] = {
	            'Client of Kourend'
	        },
	        ['skills'] = {
	            {'Hunter', 12}
	        }
	    },
	    ['Between a Rock...'] = { 
	        ['quests'] = {
	            'Dwarf Cannon', 
	            'Fishing Contest'
	        },
	        ['skills'] = {
	            {'Defence', 30},
	            {'Mining', 40, 'boostable'},
	            {'Smithing', 50, 'boostable'}
	        }
	    },
	    ['Big Chompy Bird Hunting'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Cooking', 30},
	            {'Fletching', 5},
	            {'Ranged', 30}
	        }
	    },
	    ['Biohazard'] = { 
	        ['quests'] = {
	            'Plague City'
	        },
	        ['skills'] = {}
	    },
	    ['Black Knights\' Fortress'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Quest point', 12}
	        }
	    },
	    ['Bone Voyage'] = { 
	        ['quests'] = {
	            'The Dig Site'
	        },
	        ['skills'] = {
	            {'Kudos', 100}
	        }
	    },
	    ['Cabin Fever'] = { 
	        ['quests'] = {
	            'Pirate\'s Treasure', 
	            'Rum Deal'
	        },
	        ['skills'] = {
	            {'Agility', 42},
	            {'Crafting', 45},
	            {'Smithing', 50},
	            {'Ranged', 40}
	        }
	    },
	    ['Client of Kourend'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Clock Tower'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Cold War'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Agility', 30},
	            {'Construction', 34},
	            {'Crafting', 30},
	            {'Hunter', 10},
	            {'Thieving', 15}
	        }
	    },
	    ['Contact!'] = { 
	        ['quests'] = {
	            'Prince Ali Rescue', 
	            'Icthlarin\'s Little Helper'
	        },
	        ['skills'] = {}
	    },
	    ['Cook\'s Assistant'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['The Corsair Curse'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Creature of Fenkenstrain'] = { 
	        ['quests'] = {
	            'Priest in Peril', 
	            'The Restless Ghost'
	        },
	        ['skills'] = {
	            {'Crafting', 20},
	            {'Thieving', 25}
	        }
	    },
	    ['Darkness of Hallowvale'] = { 
	        ['quests'] = {
	            'In Aid of the Myreque'
	        },
	        ['skills'] = {
	            {'Agility', 26},
	            {'Construction', 5},
	            {'Crafting', 32},
	            {'Magic', 33},
	            {'Mining', 20},
	            {'Strength', 40},
	            {'Thieving', 22}
	        }
	    },
	    ['Death Plateau'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Death to the Dorgeshuun'] = { 
	        ['quests'] = {
	            'The Lost Tribe'
	        },
	        ['skills'] = {
	            {'Agility', 23},
	            {'Thieving', 23}
	        }
	    },
	    ['Demon Slayer'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['The Depths of Despair'] = { 
	        ['quests'] = {
	            'Client of Kourend'
	        },
	        ['skills'] = {
	            {'Agility', 18}
	        }
	    },
	    ['Desert Treasure'] = { 
	        ['quests'] = {
	            'The Dig Site', 
	            'Temple of Ikov', 
	            'The Tourist Trap', 
	            'Troll Stronghold', 
	            'Priest in Peril', 
	            'Waterfall Quest'
	        },
	        ['skills'] = {
	            {'Firemaking', 50},
	            {'Magic', 50},
	            {'Slayer', 10},
	            {'Thieving', 53}
	        }
	    },
	    ['Devious Minds'] = { 
	        ['quests'] = {
	            'Doric\'s Quest',
	            'Enter the Abyss',
	            'Troll Stronghold', 
	            'Wanted!'
	        },
	        ['skills'] = {
	            {'Fletching', 50},
	            {'Runecraft', 50},
	            {'Smithing', 65, 'boostable'}
	        }
	    },
	    ['The Dig Site'] = { 
	        ['quests'] = {
	            'Druidic Ritual'
	        },
	        ['skills'] = {
	            {'Agility', 10},
	            {'Herblore', 10},
	            {'Thieving', 25}
	        }
	    },
	    ['Doric\'s Quest'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Dragon Slayer'] = {
	        ['quests'] = {},
	        ['skills'] = {
	            {'Quest point', 32},
	            {'Crafting', 8, 'ironman'}
	        }
	    },
	    ['Dragon Slayer II'] = { 
	        ['quests'] = {
	            'Legends\' Quest', 
	            'Dream Mentor',
	            'A Tail of Two Cats', 
	            'Animal Magnetism', 
	            'Ghosts Ahoy', 
	            'Bone Voyage', 
	            'Client of Kourend'
	        },
	        ['skills'] = {
	            {'Quest point', 200},
	            {'Magic', 75},
	            {'Smithing', 70},
	            {'Mining', 68},
	            {'Crafting', 62},
	            {'Agility', 60},
	            {'Thieving', 60},
	            {'Construction', 50},
	            {'Hitpoints', 50}
	        }
	    },
	    ['Dream Mentor'] = { 
	        ['quests'] = {
	            'Lunar Diplomacy', 
	            'Eadgar\'s Ruse'
	        },
	        ['skills'] = {
	            {'Combat', 85}
	        }
	    },
	    ['Druidic Ritual'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Dwarf Cannon'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Eadgar\'s Ruse'] = { 
	        ['quests'] = {
	            'Druidic Ritual', 
	            'Troll Stronghold'
	        },
	        ['skills'] = {
	            {'Herblore', 31, 'boostable'}
	        }
	    },
	    ['Eagles\' Peak'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Hunter', 27, 'boostable'}
	        }
	    },
	    ['Elemental Workshop I'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Mining', 20},
	            {'Smithing', 20},
	            {'Crafting', 20}
	        }
	    },
	    ['Elemental Workshop II'] = { 
	        ['quests'] = {
	            'Elemental Workshop I'
	        },
	        ['skills'] = {
	            {'Magic', 20},
	            {'Smithing', 30}
	        }
	    },
	    ['Enakhra\'s Lament'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Mining', 45, 'ironman'},
	            {'Firemaking', 45},
	            {'Crafting', 50},
	            {'Prayer', 43},
	            {'Magic', 39}
	        }
	    },
	    ['Enlightened Journey'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Quest point', 20},
	            {'Firemaking', 20},
	            {'Farming', 30},
	            {'Crafting', 36}
	        }
	    },
	    ['Ernest the Chicken'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['The Eyes of Glouphrie'] = { 
	        ['quests'] = {
	            'The Grand Tree'
	        },
	        ['skills'] = {
	            {'Construction', 5},
	            {'Magic', 46}
	        }
	    },
	    ['Fairytale I - Growing Pains'] = { 
	        ['quests'] = {
	            'Lost City',
	            'Nature Spirit'
	        },
	        ['skills'] = {}
	    },
	    ['Fairytale II - Cure a Queen'] = { 
	        ['quests'] = {
	            'Fairytale I - Growing Pains'
	        },
	        ['skills'] = {
	            {'Thieving', 40},
	            {'Farming', 49, 'boostable'},
	            {'Herblore', 57, 'boostable'}
	        }
	    },
	    ['Family Crest'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Crafting', 40},
	            {'Magic', 59, 'boostable'},
	            {'Mining', 40, 'boostable'},
	            {'Smithing', 40, 'boostable'}
	        }
	    },
	    ['The Feud'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Thieving', 30}
	        }
	    },
	    ['Fight Arena'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Fishing Contest'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Fishing', 10}
	        }
	    },
	    ['Forgettable Tale...'] = { 
	        ['quests'] = {
	            'The Giant Dwarf',
	            'Fishing Contest'
	        },
	        ['skills'] = {
	            {'Cooking', 22},
	            {'Farming', 17}
	        }
	    },
	    ['The Forsaken Tower'] = { 
	        ['quests'] = {
	        	'Client of Kourend'
	        },
	        ['skills'] = {}
	    },
	    ['The Fremennik Exiles'] = { 
	        ['quests'] = {
	        	'The Fremennik Isles',
	        	'Lunar Diplomacy',
	        	'Mountain Daughter',
	        	'Heroes\' Quest'
	        },
	        ['skills'] = {
	        	{'Crafting', 65},
	        	{'Fishing', 60},
	        	{'Runecraft', 55},
	        	{'Slayer', 60},
	        	{'Smithing', 60}
	        }
	    },
	    ['The Fremennik Isles'] = { 
	        ['quests'] = {
	            'The Fremennik Trials'
	        },
	        ['skills'] = {
	            {'Construction', 20},
	            {'Agility', 40, 'boostable'},
	            {'Woodcutting', 56, 'ironman'},
	            {'Crafting', 46, 'ironman'}
	        }
	    },
	    ['The Fremennik Trials'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Garden of Tranquillity'] = { 
	        ['quests'] = {
	            'Creature of Fenkenstrain'
	        },
	        ['skills'] = {
	            {'Farming', 25}
	        }
	    },
	    ['Gertrude\'s Cat'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Getting Ahead'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	        	{'Construction', 26},
	        	{'Crafting', 30}
	        }
	    },
	    ['Ghosts Ahoy'] = { 
	        ['quests'] = {
	            'The Restless Ghost', 
	            'Priest in Peril'
	        },
	        ['skills'] = {
	            {'Agility', 25, 'boostable'},
	            {'Cooking', 20}
	        }
	    },
	    ['The Giant Dwarf'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Crafting', 12},
	            {'Firemaking', 16},
	            {'Magic', 33},
	            {'Thieving', 14}
	        }
	    },
	    ['Goblin Diplomacy'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['The Golem'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Crafting', 20},
	            {'Thieving', 25}
	        }
	    },
	    ['The Grand Tree'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Agility', 25, 'boostable'}
	        }
	    },
	    ['The Great Brain Robbery'] = { 
	        ['quests'] = {
	            'Creature of Fenkenstrain', 
	            'Cabin Fever', 
	            'Recipe for Disaster/Freeing Pirate Pete'
	        },
	        ['skills'] = {
	            {'Crafting', 16},
	            {'Construction', 30},
	            {'Prayer', 50}
	        }
	    },
	    ['Grim Tales'] = { 
	        ['quests'] = {
	            'Witch\'s House'
	        },
	        ['skills'] = {
	            {'Farming', 45, 'boostable'},
	            {'Herblore', 52, 'boostable'},
	            {'Thieving', 58, 'boostable'},
	            {'Agility', 59, 'boostable'},
	            {'Woodcutting', 71, 'boostable'}
	        }
	    },
	    ['The Hand in the Sand'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Thieving', 17},
	            {'Crafting', 49}
	        }
	    },
	    ['Haunted Mine'] = { 
	        ['quests'] = {
	            'Priest in Peril'
	        },
	        ['skills'] = {
	            {'Agility', 15},
	            {'Crafting', 35}
	        }
	    },
	    ['Hazeel Cult'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Heroes\' Quest'] = { 
	        ['quests'] = {
	            'Dragon Slayer', 
	            'Druidic Ritual', 
	            'Lost City',
	            'Merlin\'s Crystal',
	            'Shield of Arrav'
	        },
	        ['skills'] = {
	            {'Quest point', 55},
	            {'Cooking', 53},
	            {'Fishing', 53},
	            {'Herblore', 25},
	            {'Mining', 50}
	        }
	    },
	    ['Holy Grail'] = { 
	        ['quests'] = {
	            'Merlin\'s Crystal'
	        },
	        ['skills'] = {
	            {'Attack', 20}
	        }
	    },
	    ['Horror from the Deep'] = { 
	        ['quests'] = {
	            'Alfred Grimhand\'s Barcrawl'
	        },
	        ['skills'] = {
	            {'Agility', 35, 'boostable'}
	        }
	    },
	    ['Icthlarin\'s Little Helper'] = { 
	        ['quests'] = {
	            'Gertrude\'s Cat'
	        },
	        ['skills'] = {}
	    },
	    ['Imp Catcher'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['In Aid of the Myreque'] = { 
	        ['quests'] = {
	            'In Search of the Myreque'
	        },
	        ['skills'] = {
	            {'Crafting', 25},
	            {'Magic', 7},
	            {'Mining', 15}
	        }
	    },
	    ['In Search of the Myreque'] = { 
	        ['quests'] = {
	            'Nature Spirit'
	        },
	        ['skills'] = {
	            {'Agility', 25}
	        }
	    },
	    ['Jungle Potion'] = { 
	        ['quests'] = {
	            'Druidic Ritual'
	        },
	        ['skills'] = {
	            {'Herblore', 3}
	        }
	    },
	    ['The Knight\'s Sword'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Mining', 10}
	        }
	    },
	    ['King\'s Ransom'] = { 
	        ['quests'] = {
	            'Black Knights\' Fortress',
	            'Holy Grail',
	            'Murder Mystery',
	            'One Small Favour',
	        },
	        ['skills'] = {
	            {'Magic', 45},
	            {'Defence', 65}
	        }
	    },
	    ['Legends\' Quest'] = { 
	        ['quests'] = {
	            'Family Crest', 
	            'Heroes\' Quest', 
	            'Shilo Village',
	            'Underground Pass',
	            'Waterfall Quest'
	        },
	        ['skills'] = {
	            {'Quest point', 107},
	            {'Agility', 50, 'boostable'},
	            {'Crafting', 50},
	            {'Herblore', 45},
	            {'Magic', 56},
	            {'Mining', 52, 'boostable'},
	            {'Prayer', 42, 'boostable'},
	            {'Smithing', 50},
	            {'Strength', 50, 'boostable'},
	            {'Thieving', 50},
	            {'Woodcutting', 50, 'boostable'}
	        }
	    },
	    ['Lost City'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Crafting', 31},
	            {'Woodcutting', 36}
	        }
	    },
	    ['The Lost Tribe'] = { 
	        ['quests'] = {
	            'Goblin Diplomacy',
	            'Rune Mysteries'
	        },
	        ['skills'] = {
	            {'Agility', 13},
	            {'Mining', 17},
	            {'Thieving', 13}
	        }
	    },
	    ['Lunar Diplomacy'] = { 
	        ['quests'] = {
	            'The Fremennik Trials', 
	            'Lost City',
	            'Rune Mysteries', 
	            'Shilo Village'
	        },
	        ['skills'] = {
	            {'Crafting', 61},
	            {'Defence', 40},
	            {'Firemaking', 49},
	            {'Herblore', 5},
	            {'Magic', 65},
	            {'Mining', 60},
	            {'Woodcutting', 55}
	        }
	    },
	    ['Making Friends with My Arm'] = { 
	        ['quests'] = {
	            'My Arm\'s Big Adventure',
	            'Swan Song',
	            'Cold War',
	            'Romeo & Juliet'
	        },
	        ['skills'] = {
	            {'Agility', 68, 'boostable'},
	            {'Construction', 35, 'boostable'},
	            {'Firemaking', 66},
	            {'Mining', 72, 'boostable'}
	        }
	    },
	    ['Making History'] = { 
	        ['quests'] = {
	            'Priest in Peril',
	            'The Restless Ghost'
	        },
	        ['skills'] = {}
	    },
	    ['Merlin\'s Crystal'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Misthalin Mystery'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Monk\'s Friend'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Monkey Madness I'] = { 
	        ['quests'] = {
	            'The Grand Tree',
	            'Tree Gnome Village'
	        },
	        ['skills'] = {}
	    },
	    ['Monkey Madness II'] = { 
	        ['quests'] = {
	            'Enlightened Journey',
	            'The Eyes of Glouphrie',
	            'Recipe for Disaster/Freeing King Awowogei',
	            'Troll Stronghold',
	            'Watchtower'
	        },
	        ['skills'] = {
	            {'Slayer', 69},
	            {'Crafting', 70},
	            {'Hunter', 60},
	            {'Agility', 55},
	            {'Thieving', 55},
	            {'Firemaking', 60, 'boostable'}
	        }
	    },
	    ['Mountain Daughter'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Agility', 20}
	        }
	    },
	    ['Mourning\'s End Part I'] = { 
	        ['quests'] = {
	            'Roving Elves',
	            'Big Chompy Bird Hunting',
	            'Sheep Herder'
	        },
	        ['skills'] = {
	            {'Ranged', 60},
	            {'Thieving', 50, 'boostable'}
	        }
	    },
	    ['Mourning\'s End Part II'] = { 
	        ['quests'] = {
	            'Mourning\'s End Part I'
	        },
	        ['skills'] = {}
	    },
	    ['Murder Mystery'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['My Arm\'s Big Adventure'] = { 
	        ['quests'] = {
	            'Eadgar\'s Ruse',
	            'The Feud',
	            'Jungle Potion'
	        },
	        ['skills'] = {
	            {'Farming', 29, 'boostable'},
	            {'Woodcutting', 10}
	        }
	    },
	    ['Nature Spirit'] = { 
	        ['quests'] = {
	            'Priest in Peril',
	            'The Restless Ghost'
	        },
	        ['skills'] = {
	            {'Crafting', 18, 'ironman'}
	        }
	    },
	    ['Observatory Quest'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Crafting', 10}
	        }
	    },
	    ['Olaf\'s Quest'] = { 
	        ['quests'] = {
	            'The Fremennik Trials'
	        },
	        ['skills'] = {
	            {'Firemaking', 40},
	            {'Woodcutting', 50}
	        }
	    },
	    ['One Small Favour'] = { 
	        ['quests'] = {
	            'Shilo Village',
	            'Rune Mysteries'
	        },
	        ['skills'] = {
	            {'Agility', 36, 'boosted'},
	            {'Crafting', 25},
	            {'Herblore', 18},
	            {'Smithing', 30}
	        }
	    },
	    ['Pirate\'s Treasure'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Plague City'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['A Porcine of Interest'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Priest in Peril'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Prince Ali Rescue'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['The Queen of Thieves'] = {
	        ['quests'] = {
	            'Client of Kourend'    
	        },
	        ['skills'] = {
	            {'Thieving', 20}
	        }
	    },
	    ['Rag and Bone Man'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Rag and Bone Man II'] = { 
	        ['quests'] = {
	            'Rag and Bone Man',
	            'The Fremennik Trials',
	            'Horror from the Deep',
	            'Skippy and the Mogres',
	            'Started:Creature of Fenkenstrain',
	            'Started:Zogre Flesh Eaters'
	        },
	        ['skills'] = {
	            {'Slayer', 40},
	            {'Defence', 20}
	        }
	    },
	    ['Ratcatchers'] = { 
	        ['quests'] = {
	            'Icthlarin\'s Little Helper'
	        },
	        ['skills'] = {}
	    },
	    ['Recipe for Disaster'] = { 
	        ['quests'] = {
	            'Recipe for Disaster/Defeating the Culinaromancer'
	        },
	        ['skills'] = {}
	    },
	    ['Recipe for Disaster/Defeating the Culinaromancer'] = { 
	        ['quests'] = {
	            'Desert Treasure',
	            'Horror from the Deep',
	            'Recipe for Disaster/Freeing Evil Dave',
	            'Recipe for Disaster/Freeing King Awowogei',
	            'Recipe for Disaster/Freeing Pirate Pete',
	            'Recipe for Disaster/Freeing Sir Amik Varze',
	            'Recipe for Disaster/Freeing Skrach Uglogwee',
	            'Recipe for Disaster/Freeing the Goblin generals',
	            'Recipe for Disaster/Freeing the Lumbridge Guide',
	            'Recipe for Disaster/Freeing the Mountain Dwarf'
	        },
	        ['skills'] = {
	            {'Quest point', 175}
	        }
	    },
	    ['Recipe for Disaster/Another Cook\'s Quest'] = { 
	        ['quests'] = {
	            'Cook\'s Assistant'
	        },
	        ['skills'] = {
	            {'Cooking', 10}
	        }
	    },
	    ['Recipe for Disaster/Freeing Evil Dave'] = { 
	        ['quests'] = {
	            'Gertrude\'s Cat',
	            'Shadow of the Storm',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {
	            {'Cooking', 25}
	        }
	    },
	    ['Recipe for Disaster/Freeing King Awowogei'] = { 
	        ['quests'] = {
	            'Monkey Madness I',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {
	            {'Agility', 48},
	            {'Cooking', 70, 'boostable'}
	        }
	    },
	    ['Recipe for Disaster/Freeing Pirate Pete'] = { 
	        ['quests'] = {
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {
	            {'Crafting', 42, 'ironman'},
	            {'Cooking', 31}
	        }
	    },
	    ['Recipe for Disaster/Freeing Sir Amik Varze'] = { 
	        ['quests'] = {
	            'Started:Legends\' Quest',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {}
	    },
	    ['Recipe for Disaster/Freeing Skrach Uglogwee'] = { 
	        ['quests'] = {
	            'Big Chompy Bird Hunting',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {
	            {'Firemaking', 20},
	            {'Cooking', 41}
	        }
	    },
	    ['Recipe for Disaster/Freeing the Goblin generals'] = { 
	        ['quests'] = {
	            'Goblin Diplomacy',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {}
	    },
	    ['Recipe for Disaster/Freeing the Lumbridge Guide'] = { 
	        ['quests'] = {
	            'Big Chompy Bird Hunting',
	            'Biohazard',
	            'Demon Slayer',
	            'Murder Mystery',
	            'Nature Spirit',
	            'Witch\'s House',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {
	            {'Cooking', 40}
	        }
	    },
	    ['Recipe for Disaster/Freeing the Mountain Dwarf'] = { 
	        ['quests'] = {
	            'Fishing Contest',
	            'Recipe for Disaster/Another Cook\'s Quest'
	        },
	        ['skills'] = {}
	    },
	    ['Recruitment Drive'] = { 
	        ['quests'] = {
	            'Black Knights\' Fortress',
	            'Druidic Ritual'
	        },
	        ['skills'] = {}
	    },
	    ['Regicide'] = { 
	        ['quests'] = {
	            'Underground Pass'
	        },
	        ['skills'] = {
	            {'Agility', 56, 'boostable'},
	            {'Crafting', 10}
	        }
	    },
	    ['The Restless Ghost'] = {
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Romeo & Juliet'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Roving Elves'] = { 
	        ['quests'] = {
	            'Regicide',
	            'Waterfall Quest'
	        },
	        ['skills'] = {
	            {'Agility', 56, 'boostable'}
	        }
	    },
	    ['Royal Trouble'] = { 
	        ['quests'] = {
	            'Throne of Miscellania'
	        },
	        ['skills'] = {
	            {'Agility', 40, 'boostable'},
	            {'Slayer', 40, 'boostable'}
	        }
	    },
	    ['Rum Deal'] = { 
	        ['quests'] = {
	            'Priest in Peril',
	            'Zogre Flesh Eaters'
	        },
	        ['skills'] = {
	            {'Crafting', 42},
	            {'Farming', 40, 'boostable'},
	            {'Fishing', 50, 'boostable'},
	            {'Prayer', 47, 'boostable'},
	            {'Slayer', 42}
	        }
	    },
	    ['Rune Mysteries'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Scorpion Catcher'] = { 
	        ['quests'] = {
	            'Alfred Grimhand\'s Barcrawl'
	        },
	        ['skills'] = {
	            {'Prayer', 31}
	        }
	    },
	    ['Sea Slug'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Firemaking', 30}
	        }
	    },
	    ['Shades of Mort\'ton'] = { 
	        ['quests'] = {
	            'Priest in Peril'
	        },
	        ['skills'] = {
	            {'Crafting', 20},
	            {'Herblore', 15},
	            {'Firemaking', 5},
	        }
	    },
	    ['Shadow of the Storm'] = { 
	        ['quests'] = {
	            'Demon Slayer',
	            'The Golem'
	        },
	        ['skills'] = {
	            {'Crafting', 30}
	        }
	    },
	    ['Sheep Herder'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Sheep Shearer'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Shield of Arrav'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Shilo Village'] = { 
	        ['quests'] = {
	            'Jungle Potion'
	        },
	        ['skills'] = {
	            {'Agility', 32},
	            {'Crafting', 20},
	            {'Smithing', 4, 'ironman'}
	        }
	    },
	    ['Sins of the Father'] = { 
	        ['quests'] = {
	        	'Vampyre Slayer',
	        	'A Taste of Hope'
	        },
	        ['skills'] = {
	        	{'Agility', 52},
	        	{'Attack', 50},
	        	{'Crafting', 56},
	        	{'Fletching', 60},
	        	{'Magic', 49},
	        	{'Slayer', 50},
	        	{'Woodcutting', 62}
	        }
	    },
	    ['The Slug Menace'] = { 
	        ['quests'] = {
	            'Wanted!',
	            'Sea Slug'
	        },
	        ['skills'] = {
	            {'Crafting', 30},
	            {'Runecraft', 30},
	            {'Slayer', 30},
	            {'Thieving', 30}
	        }
	    },
	    ['Song of the Elves'] = { 
	        ['quests'] = {
	        	'Mourning\'s End Part II',
	        	'Making History'
	        },
	        ['skills'] = {
	        	{'Agility', 70},
	        	{'Construction', 70},
	        	{'Farming', 70},
	        	{'Herblore', 70},
	        	{'Hunter', 70},
	        	{'Mining', 70},
	        	{'Smithing', 70},
	        	{'Woodcutting', 70}
	        }
	    },
	    ['A Soul\'s Bane'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Spirits of the Elid'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Magic', 33, 'boostable'},
	            {'Ranged', 37, 'boostable'},
	            {'Mining', 37},
	            {'Thieving', 37, 'boostable'}
	        }
	    },
	    ['Swan Song'] = { 
	        ['quests'] = {
	            'One Small Favour',
	            'Garden of Tranquillity'
	        },
	        ['skills'] = {
	            {'Quest point', 100},
	            {'Magic', 66, 'boostable'},
	            {'Cooking', 62, 'boostable'},
	            {'Fishing', 62, 'boostable'},
	            {'Smithing', 45, 'boostable'},
	            {'Firemaking', 42},
	            {'Crafting', 40}
	        }
	    },
	    ['Tai Bwo Wannai Trio'] = { 
	        ['quests'] = {
	            'Jungle Potion'
	        },
	        ['skills'] = {
	            {'Agility', 15},
	            {'Cooking', 30},
	            {'Fishing', 5},
	            {'Herblore', 34, 'ironman'}
	        }
	    },
	    ['A Tail of Two Cats'] = { 
	        ['quests'] = {
	            'Icthlarin\'s Little Helper'
	        },
	        ['skills'] = {}
	    },
	    ['Tale of the Righteous'] = { 
	        ['quests'] = {
	            'Client of Kourend'
	        },
	        ['skills'] = {
	            {'Strength', 16},
	            {'Mining', 10}
	        }
	    },
	    ['A Taste of Hope'] = { 
	        ['quests'] = {
	            'Darkness of Hallowvale'
	        },
	        ['skills'] = {
	            {'Crafting', 48},
	            {'Agility', 45},
	            {'Attack', 40},
	            {'Herblore', 40},
	            {'Slayer', 38}
	        }
	    },
	    ['Tears of Guthix'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Quest point', 43},
	            {'Firemaking', 49},
	            {'Crafting', 20},
	            {'Mining', 20}
	        }
	    },
	    ['Temple of Ikov'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Ranged', 40},
	            {'Thieving', 42, 'boostable'}
	        }
	    },
	    ['Throne of Miscellania'] = { 
	        ['quests'] = {
	            'Heroes\' Quest',
	            'The Fremennik Trials'
	        },
	        ['skills'] = {}
	    },
	    ['The Tourist Trap'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Fletching', 10},
	            {'Smithing', 20}
	        }
	    },
	    ['Tower of Life'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Construction', 10}
	        }
	    },
	    ['Tree Gnome Village'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Tribal Totem'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Thieving', 21}
	        }
	    },
	    ['Troll Romance'] = { 
	        ['quests'] = {
	            'Troll Stronghold'
	        },
	        ['skills'] = {
	            {'Agility', 28}
	        }
	    },
	    ['Troll Stronghold'] = { 
	        ['quests'] = {
	            'Death Plateau'
	        },
	        ['skills'] = {
	            {'Agility', 15}
	        }
	    },
	    ['Underground Pass'] = { 
	        ['quests'] = {
	            'Biohazard'
	        },
	        ['skills'] = {
	            {'Ranged', 25}
	        }
	    },
	    ['Vampyre Slayer'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Wanted!'] = { 
	        ['quests'] = {
	            'Recruitment Drive',
	            'The Lost Tribe',
	            'Priest in Peril'
	        },
	        ['skills'] = {
	            {'Quest point', 32}
	        }
	    },
	    ['Watchtower'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Magic', 15},
	            {'Thieving', 15},
	            {'Agility', 25},
	            {'Herblore', 14},
	            {'Mining', 40}
	        }
	    },
	    ['Waterfall Quest'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['What Lies Below'] = { 
	        ['quests'] = {
	            'Rune Mysteries'
	        },
	        ['skills'] = {
	            {'Runecraft', 35}
	        }
	    },
	    ['Witch\'s Potion'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Witch\'s House'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['X Marks the Spot'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Zogre Flesh Eaters'] = { 
	        ['quests'] = {
	            'Big Chompy Bird Hunting',
	            'Jungle Potion'
	        },
	        ['skills'] = {
	            {'Herblore', 8},
	            {'Ranged', 30},
	            {'Smithing', 4},
	            {'Strength', 10}
	        }
	    },
	-----------------------Insert MiniQuests below here-----------------------------    
	    ['Alfred Grimhand\'s Barcrawl'] = { 
	        ['quests'] = {},
	        ['skills'] = {}
	    },
	    ['Enter the Abyss'] = { 
	        ['quests'] = {
	            'Rune Mysteries'
	        },
	        ['skills'] = {}
	    },
	    ['Skippy and the Mogres'] = { 
	        ['quests'] = {},
	        ['skills'] = {
	            {'Cooking', 20},
	            {'Slayer', 32}
	        }
	    },
	}
	
	return questReqs
end
