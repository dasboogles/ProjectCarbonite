geo_cavern_spider = Creature:new {
    objectName = "@mob/creature_names:cave_gaping_spider",
    customName = "a venomous cave spider",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 65,
	chanceHit = 1.56,
	damageMin = 1550,
	damageMax = 1960,
	baseXp = 2822,
	baseHAM = 17700,
	baseHAMmax = 29400,
	armor = 0,
	resists = {30,30,15,-1,15,15,-1,-1,-1},
	meatType = "meat_insect",
	meatAmount = 150,
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
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.25,
	lootGroups = {
		{
	        groups = 
			{
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 500000,
		},
		{
	        groups = 
			{
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 500000,
        },
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"mildpoison",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(cavern_spider, "geo_cavern_spider")
