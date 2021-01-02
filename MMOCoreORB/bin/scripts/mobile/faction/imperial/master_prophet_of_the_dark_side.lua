master_prophet_of_the_dark_side = Creature:new {
	objectName = "@mob/creature_names:master_prophet_of_the_dark_side",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 168,
	chanceHit = 8.5,
	damageMin = 1120,
	damageMax = 1950,
	baseXp = 15933,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "holocron_dark", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "holocron_light", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "themepark_specific_loot", chance = 10000000}
			},
			lootChance = 250000
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(master_prophet_of_the_dark_side, "master_prophet_of_the_dark_side")
