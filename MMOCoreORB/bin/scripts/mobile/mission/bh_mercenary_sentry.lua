bh_mercenary_sentry = Creature:new {
	objectName = "@mob/creature_names:geonosian_human_security_force",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "geonosian",
	faction = "",
	level = 120,
	chanceHit = 0.65,
	damageMin = 470,
	damageMax = 650,
	baseXp = 6380,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {40,40,20,20,20,20,20,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_noble_human_male_03.iff"},
	-- Revamped BH Loot Pass #1
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "armor_all", chance = 1000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 1000000},
			},
			lootChance = 7500000
		}
	},
	weapons = {"geonosian_mercenary_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_mercenary_sentry, "bh_mercenary_sentry")
