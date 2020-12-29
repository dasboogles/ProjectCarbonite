higg_jibb_hallucination = Creature:new {
	customName = "a hallucination",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 100,
	chanceHit = 250, -- never miss!
	damageMin = 100, -- Always do flat damage!
	damageMax = 100, -- Always do flat damage!
	baseXp = 10000,
	baseHAM = 50000, -- Not hard to kill?
	baseHAMmax = 50000, -- Not hard to kill?
	armor = 3,
	resists = {55,55,55,55,55,55,55,55,55},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	scale = 0.5,
	lootGroups = {},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(higg_jibb_hallucination, "higg_jibb_hallucination")
