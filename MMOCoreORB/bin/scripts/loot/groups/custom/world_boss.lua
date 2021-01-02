world_boss = {
	description = 'Loot Group Description',
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = { -- 16.66% with 6
		{ itemTemplate = 'krayt_dragon_tissue_rare', weight = 1666666}, --16.66%
		{ itemTemplate = 'nightsister_vibro_unit', weight = 1666666}, --16.66%
		{ itemTemplate = 'acklay_bones_rare', weight = 1666666}, --16.66%
		{ itemTemplate = 'geo_spider_venom_rare', weight = 1666666}, --16.66%
		{ itemTemplate = 'krayt_dragon_pearl', weight = 1666666}, --16.66%
		{ itemTemplate = 'gorax_bone_shards_rare', weight = 1666666}, --16.66%
	}
}

addLootGroupTemplate('world_boss', world_boss)