tusken_commoner = Creature:new {
	objectName = "@mob/creature_names:tusken_commoner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 25,
	chanceHit = 0.35,
	damageMin = 150,
	damageMax = 200,
	baseXp = 1000,
	baseHAM = 3500,
	baseHAMmax = 4500,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
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
	creatureBitmask = PACK,
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
			lootChance = 500000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 250000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_commoner, "tusken_commoner")
