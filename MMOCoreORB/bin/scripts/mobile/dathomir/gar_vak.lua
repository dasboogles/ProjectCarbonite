gar_vak = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	customName = "Gar'Vak",
	socialGroup = "rancor",
	faction = "",
	level = 350,
	chanceHit = 30.0,
	damageMin = 4500,
	damageMax = 6500,
	baseXp = 285490,
	baseHAM = 1510000,
	baseHAMmax = 1801000,
	armor = 2,
	resists = {55,15,45,45,65,55,85,85,35},
	meatType = "meat_carnivore",
	meatAmount = 9500,
	hideType = "hide_leathery",
	hideAmount = 9500,
	boneType = "bone_mammal",
	boneAmount = 4950,
	milk = 0,
	tamingChance = 0,
	ferocity = 95,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 4.50,
	lootGroups = {
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
        },
        {
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "epic_armor_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
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
			lootChance = 10000000
        },
        {
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 10000000
        },
        {
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(gar_vak, "gar_vak")
