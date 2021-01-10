krayt_dragon_queen = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_queen",
	customName = "Krayt Dragon Queen",
	socialGroup = "krayt",
	faction = "",
	level = 350,
	chanceHit = 30.0,
	damageMin = 8500, -- MUCH HARDER
	damageMax = 10500,
	baseXp = 285490,
	baseHAM = 1410000,
	baseHAMmax = 1501000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,25},
	meatType = "meat_carnivore",
	meatAmount = 10000,
	hideType = "hide_bristley",
	hideAmount = 9500,
	boneType = "bone_mammal",
	boneAmount = 9050,
	milk = 0,
	tamingChance = 0,
	ferocity = 70,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 5.5,
	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },

	lootGroups = {
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "krayt_tissue_uncommon", chance = 10000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "krayt_tissue_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_tissue_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "epic_armor_all", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 5500000
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
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_queen, "krayt_dragon_queen")
