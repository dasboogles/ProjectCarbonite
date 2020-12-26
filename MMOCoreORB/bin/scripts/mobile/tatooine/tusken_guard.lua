tusken_guard = Creature:new {
	objectName = "@mob/creature_names:tusken_guard",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 50,
	chanceHit = 0.45,
	damageMin = 275,
	damageMax = 350,
	baseXp = 1000,
	baseHAM = 6500,
	baseHAMmax = 8500,
	armor = 0,
	resists = {15,15,25,5,25,15,5,15,-1},
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

CreatureTemplates:addCreatureTemplate(tusken_guard, "tusken_guard")
