dark_jedi_knight = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_knight",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 265,
	chanceHit = 23.5,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25266,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "dark_jedi" },
	lootGroups = {
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
			lootChance = 1000000
		},
		{
			groups = {
				{group = "holocron_light", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2000000
		},
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dark_jedi_knight, "dark_jedi_knight")
