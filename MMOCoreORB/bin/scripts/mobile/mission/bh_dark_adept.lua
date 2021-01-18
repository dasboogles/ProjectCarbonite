bh_dark_adept = Creature:new {
	objectName = "@mob/creature_names:dark_adept",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 240,
	chanceHit = 4.75,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13178,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {" dark_jedi" },
	lootGroups = {
		{
			groups = {
				{group = "themepark_specific_loot", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "themepark_specific_loot", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "themepark_specific_loot", chance = 10000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "experimental_components", chance = 10000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "armor_all", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(bh_dark_adept, "bh_dark_adept")
