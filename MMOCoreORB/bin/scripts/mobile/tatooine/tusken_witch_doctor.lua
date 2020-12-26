tusken_witch_doctor = Creature:new {
	objectName = "@mob/creature_names:tusken_witch_doctor",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 215,
	chanceHit = 15,
	damageMin = 1245,
	damageMax = 2100,
	baseXp = 21201,
	baseHAM = 180000,
	baseHAMmax = 245000,
	armor = 3,
	resists = {65,95,35,100,0,30,45,80,-1},
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
			lootChance = 2500000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 1750000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1000000
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
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_witch_doctor, "tusken_witch_doctor")
