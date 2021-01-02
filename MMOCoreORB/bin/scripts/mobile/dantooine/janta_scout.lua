janta_scout = Creature:new {
	objectName = "@mob/creature_names:janta_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 76,
	chanceHit = 0.75,
	damageMin = 420,
	damageMax = 850,
	baseXp = 5007,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {-1,35,10,10,10,70,10,10,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "janta_common", chance = 10000000}
			},
			lootChance = 1250000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 750000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_scout, "janta_scout")
