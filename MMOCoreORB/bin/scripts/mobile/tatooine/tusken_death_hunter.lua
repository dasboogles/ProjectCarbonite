tusken_death_hunter = Creature:new {
	objectName = "@mob/creature_names:tusken_death_hunter",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 65,
	chanceHit = 0.50,
	damageMin = 515,
	damageMax = 650,
	baseXp = 1000,
	baseHAM = 9900,
	baseHAMmax = 16000,
	armor = 0,
	resists = {30,30,30,30,30,30,30,30,-1},
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
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_death_hunter, "tusken_death_hunter")
