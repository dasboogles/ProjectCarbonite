tusken_torture_lord = Creature:new {
	objectName = "@mob/creature_names:tusken_torture_lord",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 85,
	chanceHit = 0.75,
	damageMin = 555,
	damageMax = 680,
	baseXp = 1000,
	baseHAM = 14150,
	baseHAMmax = 26700,
	armor = 0,
	resists = {50,30,0,60,-1,30,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "tusken_common", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 750000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_torture_lord, "tusken_torture_lord")
