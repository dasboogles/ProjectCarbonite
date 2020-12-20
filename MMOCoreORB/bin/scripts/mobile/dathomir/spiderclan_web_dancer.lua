spiderclan_web_dancer = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_web_dancer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 105,
	chanceHit = 2.15,
	damageMin = 720,
	damageMax = 1050,
	baseXp = 8315,
	baseHAM = 48000,
	baseHAMmax = 67500,
	armor = 1,
	resists = {100,95,100,65,100,65,90,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_web_dancer.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 3250000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 3250000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_web_dancer, "spiderclan_web_dancer")
