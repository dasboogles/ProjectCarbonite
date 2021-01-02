feral_mutant_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	customName = "Feral Mutant Bull Rancor",
	socialGroup = "rancor",
	faction = "",
	level = 250,
	chanceHit = 20.0,
	damageMin = 1500,
	damageMax = 3500,
	baseXp = 85490,
	baseHAM = 210000,
	baseHAMmax = 301000,
	armor = 2,
	resists = {65,45,45,35,75,25,75,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 5000,
	hideType = "hide_leathery",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 1950,
	milk = 0,
	tamingChance = 0,
	ferocity = 85,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.75,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 7500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(feral_mutant_bull_rancor, "feral_mutant_bull_rancor")
