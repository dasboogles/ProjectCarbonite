dark_adept = Creature:new {
	objectName = "@mob/creature_names:dark_adept",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 140,
	chanceHit = 4.75,
	damageMin = 1145,
	damageMax = 1950,
	baseXp = 13178,
	baseHAM = 150000,
	baseHAMmax = 161000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "dark_jedi" },
	lootGroups = {
		{
			groups = {
				{group = "named_crystals", chance = 10000000},
			},
			lootChance = 500000,
		},
		{
			groups = {
				{group = "jedi_clothing_attachments", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "dark_jedi_common", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "dark_jedi_common", chance = 10000000}
			},
			lootChance = 3500000
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
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 3500000
		},
	},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(dark_adept, "dark_adept")
