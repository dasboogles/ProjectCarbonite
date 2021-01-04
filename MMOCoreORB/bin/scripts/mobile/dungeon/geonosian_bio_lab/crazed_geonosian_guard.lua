crazed_geonosian_guard = Creature:new {
	objectName = "@mob/creature_names:geonosian_crazed_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "geonosian",
	faction = "",
	level = 65,
	chanceHit = 1.64,
	damageMin = 380,
	damageMax = 550,
	baseXp = 6288,
	baseHAM = 27000,
	baseHAMmax = 34000,
	armor = 1,
	resists = {25,35,-1,65,25,25,-1,25,-1},
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

	templates = {
		"object/mobile/dressed_geonosian_warrior_01.iff",
		"object/mobile/dressed_geonosian_warrior_02.iff",
		"object/mobile/dressed_geonosian_warrior_03.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
	        groups = {
				{group = "geonosian_relic", chance = 10000000},
			},
			lootChance = 1500000,
		},
		{
	        groups = {
				{group = "geonosian_cubes", chance = 10000000},
			},
			lootChance = 2500000,
        },
	},
	weapons = {"geonosian_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(crazed_geonosian_guard, "crazed_geonosian_guard")
