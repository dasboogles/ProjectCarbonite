nightsister_initiate = Creature:new {
	objectName = "@mob/creature_names:nightsister_initiate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 60,
	chanceHit = 1.15,
	damageMin = 545,
	damageMax = 700,
	baseXp = 5830,
	baseHAM = 12000,
	baseHAMmax = 17000,
	armor = 1,
	resists = {45,45,45,55,55,55,55,55,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_initiate.iff"},

	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 3000000
		},
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
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 2500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamid,fencermid,swordsmanmid,pikemanmid,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_initiate, "nightsister_initiate")
