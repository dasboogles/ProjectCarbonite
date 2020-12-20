singing_mountain_clan_sentry = Creature:new {
	objectName = "@mob/creature_names:singing_mountain_clan_sentry",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 80,
	chanceHit = 1.85,
	damageMin = 890,
	damageMax = 1050,
	baseXp = 1609,
	baseHAM = 25900,
	baseHAMmax = 37200,
	armor = 1,
	resists = {65,65,65,65,65,65,65,65,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_sentry.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 2050000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 2050000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_sentry, "singing_mountain_clan_sentry")
