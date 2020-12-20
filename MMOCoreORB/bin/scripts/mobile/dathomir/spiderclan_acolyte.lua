spiderclan_acolyte = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_initiate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 75,
	chanceHit = 1.5,
	damageMin = 745,
	damageMax = 900,
	baseXp = 6196,
	baseHAM = 31000,
	baseHAMmax = 54000,
	armor = 1,
	resists = {35,85,100,50,100,100,50,100,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_initiate.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 1500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_acolyte, "spiderclan_acolyte")
