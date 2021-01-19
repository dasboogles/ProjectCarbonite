dark_jedi_master = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_master",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 492000,
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
			lootChance = 7500000
		},
		{
			groups = {
				{group = "jedi_clothing_attachments", chance = 10000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "dark_jedi_common", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "dark_jedi_common", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "holocron_dark", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "holocron_light", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 4500000
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dark_jedi_master, "dark_jedi_master")
