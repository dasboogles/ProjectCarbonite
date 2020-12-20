spiderclan_protector = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 165,
	chanceHit = 5.75,
	damageMin = 1270,
	damageMax = 1550,
	baseXp = 12424,
	baseHAM = 80000,
	baseHAMmax = 91000,
	armor = 2,
	resists = {45,95,100,65,100,100,55,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_protector.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2250000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 2250000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 2250000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 2250000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 3500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(spiderclan_protector, "spiderclan_protector")
