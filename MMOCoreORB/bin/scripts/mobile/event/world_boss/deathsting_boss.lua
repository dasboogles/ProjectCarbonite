deathsting_boss = Creature:new {
	customName = "Deathsting",
	socialGroup = "krayt",
	faction = "",
	level = 500,
	chanceHit = 70.0,
	damageMin = 7570,
	damageMax = 9950,
	baseXp = 28549,
	baseHAM = 1810000,
	baseHAMmax = 1850000,
	armor = 3,
	resists = {85,45,85,65,55,85,85,85,65},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 5.5,

	templates = {"object/mobile/som/deathsting.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "world_boss", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "world_boss", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
	        groups = {
				{group = "world_boss", chance = 10000000},
			},
			lootChance = 5500000
		},
		{
	        groups = {
				{group = "world_boss", chance = 10000000},
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 3500000
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
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"intimidationattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(deathsting_boss, "deathsting_boss")