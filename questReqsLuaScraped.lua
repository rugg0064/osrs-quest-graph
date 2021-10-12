getQuestTable = function()
	local questReqs = {
		['Cook\'s Assistant'] = { 
			['quests'] = {
			}
		},
		['Demon Slayer'] = { 
			['quests'] = {
			}
		},
		['The Restless Ghost'] = { 
			['quests'] = {
			}
		},
		['Romeo & Juliet'] = { 
			['quests'] = {
			}
		},
		['Sheep Shearer'] = { 
			['quests'] = {
			}
		},
		['Shield of Arrav'] = { 
			['quests'] = {
			}
		},
		['Ernest the Chicken'] = { 
			['quests'] = {
			}
		},
		['Vampyre Slayer'] = { 
			['quests'] = {
			}
		},
		['Imp Catcher'] = { 
			['quests'] = {
			}
		},
		['Prince Ali Rescue'] = { 
			['quests'] = {
			}
		},
		['Doric\'s Quest'] = { 
			['quests'] = {
			}
		},
		['Black Knights\' Fortress'] = { 
			['quests'] = {
			}
		},
		['Witch\'s Potion'] = { 
			['quests'] = {
			}
		},
		['The Knight\'s Sword'] = { 
			['quests'] = {
			}
		},
		['Goblin Diplomacy'] = { 
			['quests'] = {
			}
		},
		['Pirate\'s Treasure'] = { 
			['quests'] = {
			}
		},
		['Dragon Slayer I'] = { 
			['quests'] = {
			}
		},
		['Druidic Ritual'] = { 
			['quests'] = {
			}
		},
		['Lost City'] = { 
			['quests'] = {
			}
		},
		['Witch\'s House'] = { 
			['quests'] = {
			}
		},
		['Merlin\'s Crystal'] = { 
			['quests'] = {
			}
		},
		['Heroes\' Quest'] = { 
			['quests'] = {
				'Shield of Arrav',
				'Lost City',
				'Merlin\'s Crystal',
				'Dragon Slayer I'
			}
		},
		['Scorpion Catcher'] = { 
			['quests'] = {
			}
		},
		['Family Crest'] = { 
			['quests'] = {
			}
		},
		['Tribal Totem'] = { 
			['quests'] = {
			}
		},
		['Fishing Contest'] = { 
			['quests'] = {
			}
		},
		['Monk\'s Friend'] = { 
			['quests'] = {
			}
		},
		['Temple of Ikov'] = { 
			['quests'] = {
			}
		},
		['Clock Tower'] = { 
			['quests'] = {
			}
		},
		['Holy Grail'] = { 
			['quests'] = {
				'Merlin\'s Crystal'
			}
		},
		['Tree Gnome Village'] = { 
			['quests'] = {
			}
		},
		['Fight Arena'] = { 
			['quests'] = {
			}
		},
		['Hazeel Cult'] = { 
			['quests'] = {
			}
		},
		['Sheep Herder'] = { 
			['quests'] = {
			}
		},
		['Plague City'] = { 
			['quests'] = {
			}
		},
		['Sea Slug'] = { 
			['quests'] = {
			}
		},
		['Waterfall Quest'] = { 
			['quests'] = {
			}
		},
		['Biohazard'] = { 
			['quests'] = {
			}
		},
		['Jungle Potion'] = { 
			['quests'] = {
			}
		},
		['The Grand Tree'] = { 
			['quests'] = {
			}
		},
		['Shilo Village'] = { 
			['quests'] = {
			}
		},
		['Underground Pass'] = { 
			['quests'] = {
				'Biohazard'
			}
		},
		['Observatory Quest'] = { 
			['quests'] = {
			}
		},
		['The Tourist Trap'] = { 
			['quests'] = {
			}
		},
		['Watchtower'] = { 
			['quests'] = {
			}
		},
		['Dwarf Cannon'] = { 
			['quests'] = {
			}
		},
		['Murder Mystery'] = { 
			['quests'] = {
			}
		},
		['The Dig Site'] = { 
			['quests'] = {
			}
		},
		['Gertrude\'s Cat'] = { 
			['quests'] = {
			}
		},
		['Legends\' Quest'] = { 
			['quests'] = {
				'Family Crest',
				'Heroes\' Quest',
				'Shilo Village',
				'Underground Pass',
				'Waterfall Quest'
			}
		},
		['Rune Mysteries'] = { 
			['quests'] = {
			}
		},
		['Big Chompy Bird Hunting'] = { 
			['quests'] = {
			}
		},
		['Elemental Workshop I'] = { 
			['quests'] = {
			}
		},
		['Priest in Peril'] = { 
			['quests'] = {
			}
		},
		['Nature Spirit'] = { 
			['quests'] = {
			}
		},
		['Death Plateau'] = { 
			['quests'] = {
			}
		},
		['Troll Stronghold'] = { 
			['quests'] = {
			}
		},
		['Tai Bwo Wannai Trio'] = { 
			['quests'] = {
			}
		},
		['Regicide'] = { 
			['quests'] = {
				'Underground Pass'
			}
		},
		['Eadgar\'s Ruse'] = { 
			['quests'] = {
				'Druidic Ritual',
				'Troll Stronghold'
			}
		},
		['Shades of Mort\'ton'] = { 
			['quests'] = {
			}
		},
		['The Fremennik Trials'] = { 
			['quests'] = {
			}
		},
		['Horror from the Deep'] = { 
			['quests'] = {
			}
		},
		['Throne of Miscellania'] = { 
			['quests'] = {
				'Heroes\' Quest',
				'The Fremennik Trials'
			}
		},
		['Monkey Madness I'] = { 
			['quests'] = {
				'The Grand Tree',
				'Tree Gnome Village'
			}
		},
		['Haunted Mine'] = { 
			['quests'] = {
			}
		},
		['Troll Romance'] = { 
			['quests'] = {
				'Troll Stronghold'
			}
		},
		['In Search of the Myreque'] = { 
			['quests'] = {
				'Nature Spirit'
			}
		},
		['Creature of Fenkenstrain'] = { 
			['quests'] = {
			}
		},
		['Roving Elves'] = { 
			['quests'] = {
				'Regicide',
				'Waterfall Quest'
			}
		},
		['Ghosts Ahoy'] = { 
			['quests'] = {
			}
		},
		['One Small Favour'] = { 
			['quests'] = {
				'Rune Mysteries',
				'Shilo Village'
			}
		},
		['Mountain Daughter'] = { 
			['quests'] = {
			}
		},
		['Between a Rock...'] = { 
			['quests'] = {
				'Dwarf Cannon',
				'Fishing Contest'
			}
		},
		['The Feud'] = { 
			['quests'] = {
			}
		},
		['The Golem'] = { 
			['quests'] = {
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
			}
		},
		['Icthlarin\'s Little Helper'] = { 
			['quests'] = {
			}
		},
		['Tears of Guthix'] = { 
			['quests'] = {
			}
		},
		['Zogre Flesh Eaters'] = { 
			['quests'] = {
				'Big Chompy Bird Hunting',
				'Jungle Potion'
			}
		},
		['The Lost Tribe'] = { 
			['quests'] = {
				'Goblin Diplomacy',
				'Rune Mysteries'
			}
		},
		['The Giant Dwarf'] = { 
			['quests'] = {
			}
		},
		['Recruitment Drive'] = { 
			['quests'] = {
				'Black Knights\' Fortress',
				'Druidic Ritual'
			}
		},
		['Mourning\'s End Part I'] = { 
			['quests'] = {
				'Roving Elves',
				'Big Chompy Bird Hunting',
				'Sheep Herder'
			}
		},
		['Forgettable Tale...'] = { 
			['quests'] = {
				'The Giant Dwarf',
				'Fishing Contest'
			}
		},
		['Garden of Tranquillity'] = { 
			['quests'] = {
				'Creature of Fenkenstrain'
			}
		},
		['A Tail of Two Cats'] = { 
			['quests'] = {
				'Icthlarin\'s Little Helper'
			}
		},
		['Wanted!'] = { 
			['quests'] = {
				'Recruitment Drive',
				'The Lost Tribe',
				'Priest in Peril',
				'Enter the Abyss'
			}
		},
		['Mourning\'s End Part II'] = { 
			['quests'] = {
				'Mourning\'s End Part I'
			}
		},
		['Rum Deal'] = { 
			['quests'] = {
				'Zogre Flesh Eaters',
				'Priest in Peril'
			}
		},
		['Shadow of the Storm'] = { 
			['quests'] = {
				'The Golem',
				'Demon Slayer'
			}
		},
		['Making History'] = { 
			['quests'] = {
				'Priest in Peril',
				'Partial completion of The Restless Ghost (Until Ghostspeak amulet is obtained)'
			}
		},
		['Ratcatchers'] = { 
			['quests'] = {
				'Icthlarin\'s Little Helper'
			}
		},
		['Spirits of the Elid'] = { 
			['quests'] = {
			}
		},
		['Devious Minds'] = { 
			['quests'] = {
				'Wanted!',
				'Troll Stronghold',
				'Doric\'s Quest',
				'Enter the Abyss'
			}
		},
		['The Hand in the Sand'] = { 
			['quests'] = {
			}
		},
		['Enakhra\'s Lament'] = { 
			['quests'] = {
			}
		},
		['Cabin Fever'] = { 
			['quests'] = {
				'Pirate\'s Treasure',
				'Rum Deal',
				'Priest in Peril'
			}
		},
		['Fairytale I - Growing Pains'] = { 
			['quests'] = {
				'Lost City',
				'Nature Spirit'
			}
		},
		['Recipe for Disaster'] = { 
			['quests'] = {
				'Big Chompy Bird Hunting',
				'Biohazard',
				'Demon Slayer',
				'Murder Mystery',
				'Nature Spirit',
				'Witch\'s House',
				'Gertrude\'s Cat',
				'Shadow of the Storm',
				'Monkey Madness I',
				'Family Crest',
				'Heroes\' Quest',
				'Shilo Village',
				'Underground Pass',
				'Waterfall Quest',
				'Desert Treasure',
				'Horror from the Deep'
			}
		},
		['Recipe for Disaster/Another Cook\'s Quest'] = { 
			['quests'] = {
			}
		},
		['Recipe for Disaster/Defeating the Culinaromancer'] = { 
			['quests'] = {
				'Desert Treasure',
				'Horror from the Deep',
				'Freeing Evil Dave',
				'Freeing the Goblin generals',
				'Freeing the Lumbridge Guide',
				'Freeing the Mountain Dwarf',
				'Freeing Pirate Pete',
				'Freeing Sir Amik Varze',
				'Freeing Skrach Uglogwee',
				'Freeing King Awowogei'
			}
		},
		['Recipe for Disaster/Freeing the Mountain Dwarf'] = { 
			['quests'] = {
				'Recipe for Disaster/Another Cook\'s Quest',
				'Fishing Contest'
			}
		},
		['Recipe for Disaster/Freeing the Goblin generals'] = { 
			['quests'] = {
			}
		},
		['Recipe for Disaster/Freeing Pirate Pete'] = { 
			['quests'] = {
				'Recipe for Disaster/Another Cook\'s Quest'
			}
		},
		['Recipe for Disaster/Freeing the Lumbridge Guide'] = { 
			['quests'] = {
				'Big Chompy Bird Hunting',
				'Biohazard',
				'Demon Slayer',
				'Murder Mystery',
				'Nature Spirit',
				'Recipe for Disaster/Another Cook\'s Quest',
				'Witch\'s House'
			}
		},
		['Recipe for Disaster/Freeing Evil Dave'] = { 
			['quests'] = {
				'Gertrude\'s Cat',
				'Recipe for Disaster/Another Cook\'s Quest',
				'Shadow of the Storm'
			}
		},
		['Recipe for Disaster/Freeing King Awowogei'] = { 
			['quests'] = {
				'Monkey Madness I',
				'Recipe for Disaster/Another Cook\'s Quest'
			}
		},
		['Recipe for Disaster/Freeing Sir Amik Varze'] = { 
			['quests'] = {
				'Family Crest',
				'Heroes\' Quest',
				'Recipe for Disaster/Another Cook\'s Quest',
				'Shilo Village',
				'Underground Pass',
				'Waterfall Quest'
			}
		},
		['Recipe for Disaster/Freeing Skrach Uglogwee'] = { 
			['quests'] = {
				'Big Chompy Bird Hunting',
				'Recipe for Disaster/Another Cook\'s Quest'
			}
		},
		['In Aid of the Myreque'] = { 
			['quests'] = {
				'In Search of the Myreque'
			}
		},
		['A Soul\'s Bane'] = { 
			['quests'] = {
			}
		},
		['Rag and Bone Man I'] = { 
			['quests'] = {
			}
		},
		['Rag and Bone Man II'] = { 
			['quests'] = {
			}
		},
		['Swan Song'] = { 
			['quests'] = {
				'One Small Favour',
				'Garden of Tranquillity'
			}
		},
		['Royal Trouble'] = { 
			['quests'] = {
			}
		},
		['Death to the Dorgeshuun'] = { 
			['quests'] = {
				'The Lost Tribe'
			}
		},
		['Fairytale II - Cure a Queen'] = { 
			['quests'] = {
				'Fairytale I - Growing Pains'
			}
		},
		['Lunar Diplomacy'] = { 
			['quests'] = {
				'The Fremennik Trials',
				'Lost City',
				'Rune Mysteries',
				'Shilo Village'
			}
		},
		['The Eyes of Glouphrie'] = { 
			['quests'] = {
			}
		},
		['Darkness of Hallowvale'] = { 
			['quests'] = {
				'In Aid of the Myreque'
			}
		},
		['The Slug Menace'] = { 
			['quests'] = {
				'Wanted!',
				'Sea Slug'
			}
		},
		['Elemental Workshop II'] = { 
			['quests'] = {
			}
		},
		['My Arm\'s Big Adventure'] = { 
			['quests'] = {
				'Eadgar\'s Ruse',
				'The Feud',
				'Jungle Potion'
			}
		},
		['Enlightened Journey'] = { 
			['quests'] = {
			}
		},
		['Eagles\' Peak'] = { 
			['quests'] = {
			}
		},
		['Animal Magnetism'] = { 
			['quests'] = {
				'The Restless Ghost',
				'Ernest the Chicken',
				'Priest in Peril'
			}
		},
		['Contact!'] = { 
			['quests'] = {
				'Prince Ali Rescue',
				'Icthlarin\'s Little Helper'
			}
		},
		['Cold War'] = { 
			['quests'] = {
			}
		},
		['The Fremennik Isles'] = { 
			['quests'] = {
			}
		},
		['Tower of Life'] = { 
			['quests'] = {
			}
		},
		['The Great Brain Robbery'] = { 
			['quests'] = {
			}
		},
		['What Lies Below'] = { 
			['quests'] = {
				'Rune Mysteries'
			}
		},
		['Olaf\'s Quest'] = { 
			['quests'] = {
			}
		},
		['Another Slice of H.A.M.'] = { 
			['quests'] = {
				'Death to the Dorgeshuun',
				'The Giant Dwarf',
				'The Dig Site'
			}
		},
		['Dream Mentor'] = { 
			['quests'] = {
				'Lunar Diplomacy',
				'Eadgar\'s Ruse'
			}
		},
		['Grim Tales'] = { 
			['quests'] = {
				'Witch\'s House'
			}
		},
		['King\'s Ransom'] = { 
			['quests'] = {
				'Black Knights\' Fortress',
				'Holy Grail',
				'Murder Mystery',
				'One Small Favour'
			}
		},
		['Monkey Madness II'] = { 
			['quests'] = {
				'Enlightened Journey',
				'The Eyes of Glouphrie',
				'Recipe for Disaster (Freeing King Awowogei)',
				'Troll Stronghold',
				'Watchtower'
			}
		},
		['Misthalin Mystery'] = { 
			['quests'] = {
			}
		},
		['Client of Kourend'] = { 
			['quests'] = {
			}
		},
		['Bone Voyage'] = { 
			['quests'] = {
			}
		},
		['The Queen of Thieves'] = { 
			['quests'] = {
				'Client of Kourend'
			}
		},
		['The Depths of Despair'] = { 
			['quests'] = {
				'Client of Kourend'
			}
		},
		['The Corsair Curse'] = { 
			['quests'] = {
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
			}
		},
		['Tale of the Righteous'] = { 
			['quests'] = {
				'Client of Kourend'
			}
		},
		['A Taste of Hope'] = { 
			['quests'] = {
				'Darkness of Hallowvale'
			}
		},
		['Making Friends with My Arm'] = { 
			['quests'] = {
				'My Arm\'s Big Adventure',
				'Swan Song',
				'Cold War',
				'Romeo & Juliet'
			}
		},
		['The Forsaken Tower'] = { 
			['quests'] = {
				'Client of Kourend'
			}
		},
		['The Ascent of Arceuus'] = { 
			['quests'] = {
				'Client of Kourend'
			}
		},
		['X Marks the Spot'] = { 
			['quests'] = {
			}
		},
		['Song of the Elves'] = { 
			['quests'] = {
				'Mourning\'s End Part II',
				'Making History'
			}
		},
		['The Fremennik Exiles'] = { 
			['quests'] = {
				'The Fremennik Isles',
				'Lunar Diplomacy',
				'Mountain Daughter',
				'Heroes\' Quest'
			}
		},
		['Sins of the Father'] = { 
			['quests'] = {
				'Vampyre Slayer',
				'A Taste of Hope'
			}
		},
		['A Porcine of Interest'] = { 
			['quests'] = {
			}
		},
		['Getting Ahead'] = { 
			['quests'] = {
			}
		},
		['Below Ice Mountain'] = { 
			['quests'] = {
			}
		},
		['A Night at the Theatre'] = { 
			['quests'] = {
				'A Taste of Hope'
			}
		},
		['A Kingdom Divided'] = { 
			['quests'] = {
				'The Depths of Despair',
				'The Queen of Thieves',
				'The Ascent of Arceuus',
				'The Forsaken Tower',
				'Tale of the Righteous'
			}
		}
	}
	return questReqs
end