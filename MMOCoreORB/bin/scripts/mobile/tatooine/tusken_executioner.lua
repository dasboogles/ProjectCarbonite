tusken_executioner = Creature:new {
	objectName = "@mob/creature_names:tusken_executioner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 250,
	chanceHit = 20,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 271000,
	baseHAMmax = 330000,
	armor = 3,
	resists = {85,80,35,100,20,30,45,80,-1},
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
			lootChance = 2750000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1750000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1750000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 1050000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 1050000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_executioner, "tusken_executioner")
