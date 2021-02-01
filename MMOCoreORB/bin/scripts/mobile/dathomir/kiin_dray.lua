kiin_dray = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse_giant_kiin_dray",
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 375,
	chanceHit = 30.75,
	damageMin = 2535,
	damageMax = 3500,
	baseXp = 67470,
	baseHAM = 510000,
	baseHAMmax = 982000,
	armor = 2,
	resists = {75,75,45,65,85,85,85,25,25},
	meatType = "meat_insect",
	meatAmount = 5000,
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

	templates = {"object/mobile/gaping_spider_recluse.iff"},
	scale = 5.0,
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "wearables_rare", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "rare_spider", chance = 10000000}
			},
			lootChance = 5500000
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(kiin_dray, "kiin_dray")