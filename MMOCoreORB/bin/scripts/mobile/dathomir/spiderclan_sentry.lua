spiderclan_sentry = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_sentry",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 85,
	chanceHit = 1.75,
	damageMin = 890,
	damageMax = 985,
	baseXp = 2730,
	baseHAM = 33000,
	baseHAMmax = 50000,
	armor = 1,
	resists = {60,50,25,25,25,25,25,-1,-1},
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

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_guardian.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 2750000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 2750000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_sentry, "spiderclan_sentry")
