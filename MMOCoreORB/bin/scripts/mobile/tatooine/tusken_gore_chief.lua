tusken_gore_chief = Creature:new {
	objectName = "@mob/creature_names:tusken_gore_chief",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 60,
	chanceHit = 0.50,
	damageMin = 475,
	damageMax = 550,
	baseXp = 1000,
	baseHAM = 9800,
	baseHAMmax = 14500,
	armor = 0,
	resists = {35,15,25,15,25,45,15,25,-1},
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

CreatureTemplates:addCreatureTemplate(tusken_gore_chief, "tusken_gore_chief")
