TEST4_worrt = Creature:new {
	objectName = "@mob/creature_names:worrt",
	customName = "COMPONENTS PINATA (CL500)",
	socialGroup = "",
	faction = "",
	level = 500,
	chanceHit = 0.01,
	damageMin = 1,
	damageMax = 1,
	baseXp = 1000,
	baseHAM = 100,
	baseHAMmax = 500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 5,
	hideType = "hide_leathery",
	hideAmount = 5,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/worrt_hue.iff"},
	scale = 3.0,
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/worrt_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "gorax_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "gorax_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_hard", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_hard", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(TEST4_worrt, "TEST4_worrt")