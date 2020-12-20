world_boss = {
	description = 'Loot Group Description',
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{ itemTemplate = 'krayt_dragon_tissue_rare', weight = 2000000}, --20%
		{ itemTemplate = 'nightsister_vibro_unit', weight = 2000000}, --20%
		{ itemTemplate = 'acklay_bones_rare', weight = 2000000}, --20%
		{ itemTemplate = 'geo_spider_venom_rare', weight = 2000000}, --20%
		{ itemTemplate = 'krayt_dragon_pearl', weight = 2000000}, --20%
	}
}

addLootGroupTemplate('world_boss', world_boss)