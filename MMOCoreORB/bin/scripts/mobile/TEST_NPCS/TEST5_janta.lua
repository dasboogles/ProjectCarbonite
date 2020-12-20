TEST5_janta = Creature:new {
    objectName = "@mob/creature_names:janta_clan_leader",
    customName = "JANTA PINATA (CL500)",
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
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_TEST", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(TEST5_janta, "TEST5_janta")
