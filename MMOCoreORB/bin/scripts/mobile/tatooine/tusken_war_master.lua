tusken_war_master = Creature:new {
	objectName = "@mob/creature_names:tusken_war_master",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 75,
	chanceHit = 0.70,
	damageMin = 555,
	damageMax = 680,
	baseXp = 1000,
	baseHAM = 13150,
	baseHAMmax = 26500,
	armor = 0,
	resists = {20,20,0,50,-1,30,0,0,-1},
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
			lootChance = 750000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 550000
		},
		{
			groups = {
				{group = "bone_armor", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "chitin_armor", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 550000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 550000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_war_master, "tusken_war_master")
