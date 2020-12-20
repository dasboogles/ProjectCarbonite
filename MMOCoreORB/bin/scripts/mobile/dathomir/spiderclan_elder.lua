spiderclan_elder = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_elder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 300,
	chanceHit = 28.25,
	damageMin = 1820,
	damageMax = 2950,
	baseXp = 26555,
	baseHAM = 421000,
	baseHAMmax = 492000,
	armor = 3,
	resists = {80,100,85,80,100,100,90,100,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rare_spider_fang", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 4750000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 6000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_elder, "spiderclan_elder")
