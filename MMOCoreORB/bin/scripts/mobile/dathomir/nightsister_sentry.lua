nightsister_sentry = Creature:new {
	objectName = "@mob/creature_names:nightsister_sentry",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 70,
	chanceHit = 1.36,
	damageMin = 640,
	damageMax = 850,
	baseXp = 6730,
	baseHAM = 17200,
	baseHAMmax = 18800,
	armor = 0,
	resists = {15,15,15,60,60,60,60,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_guardian.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2500000
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
			lootChance = 2000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 750000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 750000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencernovice,swordsmannovice,tkamid,pikemanmid,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_sentry, "nightsister_sentry")
