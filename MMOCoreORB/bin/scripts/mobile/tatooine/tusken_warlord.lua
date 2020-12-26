tusken_warlord = Creature:new {
	objectName = "@mob/creature_names:tusken_warlord",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 70,
	chanceHit = 0.60,
	damageMin = 515,
	damageMax = 650,
	baseXp = 1000,
	baseHAM = 12150,
	baseHAMmax = 22500,
	armor = 0,
	resists = {45,25,15,80,-1,40,-1,15,-1},
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
			lootChance = 650000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 650000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 450000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 650000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 650000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 450000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 450000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_warlord, "tusken_warlord")
