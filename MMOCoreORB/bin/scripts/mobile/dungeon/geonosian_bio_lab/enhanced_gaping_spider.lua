enhanced_gaping_spider = Creature:new {
	objectName = "@mob/creature_names:geonosian_gaping_spider_fire",
	customName = "Fire Breathing Spider",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 195,
	chanceHit = 7.5,
	damageMin = 1715,
	damageMax = 2140,
	baseXp = 10267,
	baseHAM = 95000,
	baseHAMmax = 155000,
	armor = 2,
	resists = {50,25,15,85,-1,-1,25,50,-1},
	meatType = "meat_insect",
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
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 2.5,
	lootGroups = {
		{
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 1000000,
        },
		{
	        groups = {
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
	        groups = {
				{group = "fire_breathing_spider", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
	        groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 1500000,
		},
		{
	        groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 1000000,
		},	
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
	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_gaping_spider, "enhanced_gaping_spider")
