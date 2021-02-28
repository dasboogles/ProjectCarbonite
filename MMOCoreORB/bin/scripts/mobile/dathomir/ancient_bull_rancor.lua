ancient_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 250,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9336,
	baseHAM = 75000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {55,65,20,80,80,80,10,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 10521,
	hideType = "hide_leathery",
	hideAmount = 10521,
	boneType = "bone_mammal",
	boneAmount = 10521,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000},
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

CreatureTemplates:addCreatureTemplate(ancient_bull_rancor, "ancient_bull_rancor")
