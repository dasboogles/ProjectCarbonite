tusken_raider = Creature:new {
	objectName = "@mob/creature_names:tusken_raider",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 45,
	chanceHit = 0.40,
	damageMin = 250,
	damageMax = 300,
	baseXp = 1000,
	baseHAM = 5500,
	baseHAMmax = 7500,
	armor = 0,
	resists = {5,5,25,5,25,15,5,15,-1},
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
			lootChance = 550000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 550000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 300000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 550000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 550000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 300000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 300000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_raider, "tusken_raider")
