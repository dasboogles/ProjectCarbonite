sith_shadow_mercenary_nofaction = Creature:new {
	objectName = "@mob/creature_names:shadow_mercenary_nofaction",
	socialGroup = "sith_shadow",
	faction = "",
	level = 250,
	chanceHit = 70,
	damageMin = 2895,
	damageMax = 4500,
	baseXp = 3327,
	baseHAM = 167900,
	baseHAMmax = 283000,
	armor = 1,
	resists = {80,90,85,85,70,85,85,85,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "sith_shadow" },
	lootGroups = {
		{}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(sith_shadow_mercenary_nofaction, "sith_shadow_mercenary_nofaction")
