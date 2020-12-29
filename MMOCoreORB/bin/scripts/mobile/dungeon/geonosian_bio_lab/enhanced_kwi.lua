enhanced_kwi = Creature:new {
	objectName = "@mob/creature_names:geonosian_enhanced_kwi",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 106,
	chanceHit = 2.25,
	damageMin = 790,
	damageMax = 1290,
	baseXp = 10081,
	baseHAM = 29000,
	baseHAMmax = 35000,
	armor = 2,
	resists = {40,40,25,40,15,15,15,15,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 85,
	boneType = "bone_mammal",
	boneAmount = 75,
	milk = 0,
	tamingChance = 0,
	ferocity = 16,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kwi.iff"},
	scale = 1.5,
	lootGroups = {}, -- Refactor?
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_kwi, "enhanced_kwi")
