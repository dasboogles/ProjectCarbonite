mercenary_sentry = Creature:new {
	objectName = "@mob/creature_names:geonosian_human_security_force",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "geonosian",
	faction = "",
	level = 96,
	chanceHit = 2.65,
	damageMin = 770,
	damageMax = 950,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_noble_human_male_03.iff"},
	lootGroups = {},
	weapons = {"geonosian_mercenary_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(mercenary_sentry, "mercenary_sentry")
